import 'package:taks_management_app/layers/domain/entities/task_entity.dart';
import 'package:taks_management_app/layers/domain/repositories/delete_task_repository.dart';

import '../datasources/delete_task_datasource.dart';

class DeleteTaskRepositoryImp implements DeleteTaskRepository {
  final DeleteTaskDataSource _deleteTaskDataSource;
  DeleteTaskRepositoryImp(this._deleteTaskDataSource);
  @override
  Future<bool> call(TaskEntity task) async {
    return await _deleteTaskDataSource(task);
  }
}
