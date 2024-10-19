import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_generator/src/helper/helper.dart';
import 'package:hive_ce_generator/src/model/hive_schema.dart';
import 'package:hive_ce_generator/src/model/revived_generate_adapter.dart';
import 'package:hive_ce_generator/src/type_adapter_generator.dart';
import 'package:source_gen/source_gen.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_writer/yaml_writer.dart';
import 'package:path/path.dart' as path;

/// Builder that generates Hive adapters from a GenerateAdapters annotation
class AdaptersBuilder extends Builder {
  @override
  final buildExtensions = const {
    r'$lib$': ['hive/hive_adapters.hive.dart'],
  };

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final dartAsset = buildStep.asset('lib/hive/hive_adapters.dart');
    if (!await buildStep.canRead(dartAsset)) return;
    final dartContent = await buildStep.readAsString(dartAsset);

    if (!dartContent.contains(
      RegExp(r"^part 'hive_adapters\.hive\.dart';$", multiLine: true),
    )) {
      throw HiveError(
        'The file $dartAsset has to contain the part statement '
        "'part 'hive_adapters.hive.dart';'",
      );
    }

    final library = await buildStep.resolver.libraryFor(dartAsset);
    final annotations = LibraryReader(library)
        .annotatedWith(TypeChecker.fromRuntime(GenerateAdapters));
    if (annotations.length > 1) {
      throw HiveError(
        'Only one GenerateAdapters annotation is allowed per project',
      );
    }
    if (annotations.isEmpty) return;

    final revived = RevivedGenerateAdapters(annotations.single.annotation);

    // This may not be the safest thing to do, but the build_runner really
    // did not like reading and outputting the same file
    final schemaFile = File(path.join('lib', 'hive', 'hive_schema.yaml'));
    final HiveSchema schema;
    if (schemaFile.existsSync()) {
      final schemaContent = await schemaFile.readAsString();
      schema =
          HiveSchema.fromJson(jsonDecode(jsonEncode(loadYaml(schemaContent))));
    } else {
      schema = HiveSchema(nextTypeId: revived.firstTypeId, types: {});
    }

    // Sort by type id for deterministic output. Put new types at the end.
    revived.specs.sort((a, b) {
      final aTypeId = schema.types[a.type.getDisplayString()]?.typeId ?? 999999;
      final bTypeId = schema.types[b.type.getDisplayString()]?.typeId ?? 999999;
      return aTypeId.compareTo(bTypeId);
    });

    var nextTypeId = schema.nextTypeId;
    final newTypes = <String, HiveSchemaType>{};
    final content = StringBuffer('''
// Generated by Hive CE
// Do not modify
// Check into version control

part of 'hive_adapters.dart';
''');
    for (final spec in revived.specs) {
      final typeKey = spec.type.getDisplayString();
      final schemaType = schema.types[typeKey] ??
          HiveSchemaType(typeId: nextTypeId++, nextIndex: 0, fields: {});
      final result = TypeAdapterGenerator.generateTypeAdapter(
        element: spec.type.element!,
        library: library,
        typeId: schemaType.typeId,
        schema: schemaType,
      );

      content.write(result.content);
      newTypes[typeKey] = result.schema!;
    }

    final yaml = YamlWriter()
        .write(HiveSchema(nextTypeId: nextTypeId, types: newTypes).toJson());
    schemaFile.writeAsStringSync(
      '''
# Generated by Hive CE
# Manual modifications may be necessary for certain migrations
# If edited manually, delete `hive_adapters.hive.dart` before regenerating
# Check into version control
$yaml''',
    );

    await buildStep.writeAsString(
      buildStep.asset('lib/hive/hive_adapters.hive.dart'),
      DartFormatter().format(content.toString()),
    );
  }
}
