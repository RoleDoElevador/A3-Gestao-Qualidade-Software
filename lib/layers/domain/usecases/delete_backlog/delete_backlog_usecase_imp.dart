import 'package:taks_management_app/layers/domain/repositories/delete_backlog_repository.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_backlog/delete_backlog_usecase.dart';

class DeleteBacklogUseCaseImp implements DeleteBacklogUseCase {
  DeleteBacklogRepository _deleteBacklogRepository;
  DeleteBacklogUseCaseImp(this._deleteBacklogRepository);

  @override
  Future<bool> call(int idBacklog) async {
    return await _deleteBacklogRepository(idBacklog);
  }
}
