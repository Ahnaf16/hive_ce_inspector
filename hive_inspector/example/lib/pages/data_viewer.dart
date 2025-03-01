import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class DataViewer<T> extends StatelessWidget {
  const DataViewer({super.key, required this.box, required this.addItem, this.dataBuilder});

  final Box<T> box;
  final T Function() addItem;
  final String Function(T? data)? dataBuilder;

  static void pushTo<T>(BuildContext context, Widget view) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => view));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(box.name)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          box.add(addItem());
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, value, child) {
          return ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: value.length,

            itemBuilder: (context, i) {
              return Card(
                child: ListTile(
                  title: Text(dataBuilder?.call(value.getAt(i)) ?? value.getAt(i)?.toString() ?? 'n/a'),
                  leading: IconButton(onPressed: () => value.deleteAt(i), icon: const Icon(Icons.delete)),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
