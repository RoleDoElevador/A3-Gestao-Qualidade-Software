import 'package:taks_management_app/layers/data/datasources/create_backlog_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/create_task_datasource.dart';
import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

import '../../domain/repositories/create_task_repository.dart';

class CreateTaskRepositoryImp implements CreateTaskRepository {
  final CreateTaskDatasource _createTaskDatasource;

  CreateTaskRepositoryImp(this._createTaskDatasource);
  @override
  Future<bool> call(TaskEntity task) async {
   return await _createTaskDatasource(task);
  }
}
