import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

import 'package:dartz/dartz.dart';
import 'package:taks_management_app/layers/domain/repositories/get_list_backlogs_repository.dart';

import '../datasources/get_list_backlogs_datasource.dart';

class GetListBackLogsRepositoryImp implements GetListBacklogsRepository {
  final GetListBackLogsDatasource _getListBackLogsDatasource;
  GetListBackLogsRepositoryImp(this._getListBackLogsDatasource);

  @override
  Future<Either<Exception, List<BackLogEntity>>> call() async {
    return await _getListBackLogsDatasource();
  }
}
