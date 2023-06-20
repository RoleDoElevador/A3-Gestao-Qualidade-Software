// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:taks_management_app/layers/data/datasources/create_backlog_datasource.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/repositories/create_backlog_repository.dart';

class CreateBacklogRepositoryImp implements CreateBacklogRepository {
  final CreateBacklogDatasource _createBacklogDatasource;
  CreateBacklogRepositoryImp(
    this._createBacklogDatasource,
  );

  @override
  Future<bool> call(BackLogEntity backlog) async {
   bool request = await _createBacklogDatasource(backlog);

    return request;
  }
}
