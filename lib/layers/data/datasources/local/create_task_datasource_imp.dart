import 'package:get_it/get_it.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

import '../create_task_datasource.dart';

class CreateTaskDatasourceImp implements CreateTaskDatasource {
  @override
  Future<bool> call(TaskEntity task) async {
    try {
      final isar = GetIt.instance.get<DataBaseInstance>();
      final db = await isar.database;

      BackLogEntity? backLogEntity = await db.backLogEntitys.get(task.idBacklog!);
      backLogEntity!.taskList!.add(task);

      await db.backLogEntitys.put(backLogEntity);

      return true;
    } catch (e) {
      return false;
    }
  }
}
