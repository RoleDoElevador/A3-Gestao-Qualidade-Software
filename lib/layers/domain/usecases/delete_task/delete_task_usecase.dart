import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

abstract class DeleteTaskUseCase {
  Future<bool> call(TaskEntity task);
}
