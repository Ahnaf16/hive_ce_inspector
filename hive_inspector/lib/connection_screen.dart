import 'package:devtools_app_shared/ui.dart';
import 'package:flutter/material.dart';
import 'package:hive_inspector/connect_client.dart';

class ConnectionScreen extends StatefulWidget {
  const ConnectionScreen({super.key});

  @override
  State<ConnectionScreen> createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends State<ConnectionScreen> {
  final ValueNotifier<List<String>> boxNames = ValueNotifier([]);

  final client = ConnectClient.connect();

  @override
  void initState() {
    super.initState();
    getBoxNames();
    setState(() {});
  }

  Future<void> getBoxNames() async {
    boxNames.value = await client.fetchAllBoxNames();
  }

  @override
  Widget build(BuildContext context) {
    final Axis splitAxis = SplitPane.axisFor(context, 0.85);

    return SplitPane(
      axis: splitAxis,
      initialFractions: const [0.33, 0.67],
      children: [
        RoundedOutlinedBorder(
          child: Column(
            children: [
              AreaPaneHeader(title: Text('Hive Inspector')),
              SizedBox(height: 3),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: boxNames,
                  builder: (context, value, child) {
                    return ListView.separated(
                      itemCount: value.length,
                      separatorBuilder: (_, _) => Divider(),
                      itemBuilder: (context, index) {
                        final n = value[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                          child: Text(n),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Container(),
      ],
    );
  }
}
