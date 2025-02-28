import 'dart:async';

import 'package:devtools_app_shared/service.dart';
import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:hive_inspector/util/cat.dart';
import 'package:vm_service/vm_service.dart';

class ConnectClient {
  ConnectClient(this.service, this.eval);

  final VmService service;
  final EvalOnDartLibrary eval;

  Disposable? _allBoxNamesDisposable;

  static ConnectClient connect() {
    final service = serviceManager.service!;

    final extensionEval = EvalOnDartLibrary(
      'package:hive_ce/src/hive_impl.dart',
      service,
      serviceManager: serviceManager,
    );

    final client = ConnectClient(service, extensionEval);

    return client;
  }

  Future<List<String>> fetchAllBoxNames() async {
    _allBoxNamesDisposable?.dispose();
    _allBoxNamesDisposable = Disposable();

    final Map<String, dynamic> data = await _evalMethod(
      method: 'boxNames()',
      eventKind: 'boxNames',
      isAlive: _allBoxNamesDisposable,
    );

    return List<String>.from(data['boxNames'] ?? []);
  }

  Future<Map<String, Object?>> _evalMethod({
    required String method,
    required String eventKind,
    Disposable? isAlive,
  }) async {
    final Completer<Map<String, Object?>> completer = Completer<Map<String, Object?>>();

    late final StreamSubscription<Event> streamSubscription;
    streamSubscription = service.onExtensionEvent.listen((Event event) {
      if (event.extensionKind == 'hive_ce.$eventKind') {
        streamSubscription.cancel();
        cat(event.extensionData!.data);
        completer.complete(event.extensionData!.data);
      }
    });

    await eval.eval('HiveDevToolsExtension().$method', isAlive: isAlive);

    return completer.future;
  }

  Future<void> disconnect() async {
    await service.dispose();
  }
}
