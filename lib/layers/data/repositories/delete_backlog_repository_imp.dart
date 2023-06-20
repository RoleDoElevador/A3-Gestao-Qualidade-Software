import 'package:taks_management_app/layers/data/datasources/delete_backlog_datasource.dart';
import 'package:taks_management_app/layers/domain/repositories/delete_backlog_repository.dart';

class DeleteBacklogRepositoryImp implements DeleteBacklogRepository {
  DeleteBacklogDataSource _deleteBacklogDataSource;
  DeleteBacklogRepositoryImp(this._deleteBacklogDataSource);

  @override
  Future<bool> call(int idBacklog) async {
    return await _deleteBacklogDataSource(idBacklog);
  }
}
