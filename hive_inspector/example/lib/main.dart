import 'package:example/hive/hive_registrar.g.dart';
import 'package:example/models/user_model.dart';
import 'package:example/pages/data_viewer.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

late Box<String> boxOfStrings;
late Box<int> boxOfInt;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapters();

  boxOfStrings = await Hive.openBox<String>('Box_of_Strings');
  boxOfInt = await Hive.openBox<int>('Box_of_Int');

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
      appBar: AppBar(title: Text('Hive Inspector Test App')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            FilledButton(
              onPressed: () {
                DataViewer.pushTo(context, DataViewer(box: boxOfStrings, addItem: () => faker.person.name()));
              },
              child: Text(boxOfStrings.name),
            ),
            FilledButton(
              onPressed: () {
                DataViewer.pushTo(
                  context,
                  DataViewer(box: boxOfInt, addItem: () => faker.randomGenerator.integer(100)),
                );
              },
              child: Text(boxOfInt.name),
            ),
            FilledButton(
              onPressed: () async {
                final f = Faker();
                var userModel = UserModel(name: f.person.name(), age: f.randomGenerator.integer(60));
                final box = await Hive.openBox<UserModel>('Box_of_Person');
                if (context.mounted) {
                  DataViewer.pushTo<UserModel>(
                    context,
                    DataViewer(
                      box: box,
                      addItem: () => userModel,
                      dataBuilder: (d) => 'name: ${d?.name}, age: ${d?.age}',
                    ),
                  );
                }
              },
              child: Text('Box_of_Person'),
            ),
          ],
        ),
      ),
    );
  }
}
