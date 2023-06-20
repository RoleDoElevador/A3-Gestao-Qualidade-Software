import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/layers/data/DTOs/backlog_dto.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

class GetListBacklogsDatasourceImp implements GetListBackLogsDatasource {
  DataBaseInstance dataBaseInstance;
  GetListBacklogsDatasourceImp({required this.dataBaseInstance});

  @override
  Future<Either<Exception, List<BackLogEntity>>> call() async {
    try {
      final isar = GetIt.instance.get<DataBaseInstance>();
      final db = await isar.database;

      final List<BackLogEntity> listBacklogs =
        await db.backLogEntitys.where().findAll();

      return Right(listBacklogs);
    } catch (e) {
      return Left(Exception(e));
    }
  }
}