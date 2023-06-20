import 'package:get_it/get_it.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

import '../delete_backlog_datasource.dart';

class DeleteBacklogDataSourceImp implements DeleteBacklogDataSource {
  @override
  Future<bool> call(int idBacklog) async {
    final isar = GetIt.instance.get<DataBaseInstance>();
    final db = await isar.database;

    bool result = await db.backLogEntitys.delete(idBacklog);

    return result;
  }
}