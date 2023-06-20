import 'package:taks_management_app/layers/domain/entities/task_entity.dart';
import 'package:taks_management_app/layers/domain/repositories/create_task_repository.dart';
import 'package:taks_management_app/layers/domain/usecases/create_task/create_task_usecase.dart';

class CreateTaskUseCaseImp implements CreateTaskUseCase {
  final CreateTaskRepository _createTaskRepository;
  CreateTaskUseCaseImp(this._createTaskRepository);
  @override
  Future<bool> call(TaskEntity task) async {
    return await _createTaskRepository(task);
  }
}
