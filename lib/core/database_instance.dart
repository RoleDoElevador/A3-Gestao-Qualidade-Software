import 'package:isar/isar.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

class DataBaseInstance {
  late Future<Isar> database;

  DataBaseInstance() {
    database = openDB();
  }

  Future<Isar> openDB() async {


    if (Isar.instanceNames.isEmpty) {
      return Isar.open(
          [
            BackLogEntitySchema,
          ],
          inspector: true,
          directory: ''
      );
    }
    return Future.value(Isar.getInstance());
  }
}