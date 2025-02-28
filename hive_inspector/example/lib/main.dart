import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

late Box<String> itemBox;
late Box<int> idBox;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  itemBox = await Hive.openBox<String>('item_box');
  idBox = await Hive.openBox<int>('id_box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hive Inspector ex')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          itemBox.add('Item ${itemBox.length}');
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: itemBox.listenable(),
        builder: (context, value, child) {
          return ListView.separated(
            itemCount: value.length,
            separatorBuilder: (_, _) => Divider(),
            itemBuilder: (context, i) {
              return ListTile(title: Text(value.getAt(i) ?? 'n/a'));
            },
          );
        },
      ),
    );
  }
}
