import 'package:hive/hive.dart';
part 'model.g.dart';

@HiveType(typeId: 0)
class id {
  @HiveField(0)
  String name;
  @HiveField(1)
  String email;
  @HiveField(2)
  String password;

  id({required this.name, required this.email, required this.password});
}
