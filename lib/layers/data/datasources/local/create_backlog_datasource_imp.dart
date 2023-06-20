import 'package:get_it/get_it.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/layers/data/datasources/create_backlog_datasource.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

class CreateBacklogDataSourceImp implements CreateBacklogDatasource {
  DataBaseInstance dataBaseInstance;
  CreateBacklogDataSourceImp({required this.dataBaseInstance});

  @override
  Future<bool> call(BackLogEntity backlog) async {
    bool result = backlog.verifyBacklogIsValid();

    if (result) {
      final isar = GetIt.instance.get<DataBaseInstance>();
      final db = await isar.database;

      db.writeTxnSync(() => db.backLogEntitys.putSync(backlog));
      return true;
    } else {
      return false;
    }
  }
}
