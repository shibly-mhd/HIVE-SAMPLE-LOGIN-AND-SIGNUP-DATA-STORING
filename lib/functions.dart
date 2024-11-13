import 'package:hive/hive.dart';
import 'package:hivesample/model.dart';

Future<void> saveprofile(id value) async {
  final box = await Hive.openBox<id>('data');
  box.put('id', value);
  print('id is added now ');
}

final box = Hive.box<id>('data');
final box1 = box.get('id');
