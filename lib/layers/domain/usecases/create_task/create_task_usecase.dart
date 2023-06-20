import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

abstract class CreateTaskUseCase {
  Future<bool> call(TaskEntity task);
}
