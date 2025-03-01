import 'package:example/models/user_model.dart';
import 'package:hive_ce/hive.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([AdapterSpec<UserModel>()])
// Annotations must be on some element
// ignore: unused_element
void _() {}
