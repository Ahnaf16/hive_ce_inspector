import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';
import 'package:hive_inspector/connection_screen.dart';

void main() {
  runApp(const HiveInspector());
}

class HiveInspector extends StatelessWidget {
  const HiveInspector({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevToolsExtension(child: ConnectionScreen());
  }
}
