import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/layers/data/datasources/local/create_backlog_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/create_backlog_repository_imp.dart';
import 'package:taks_management_app/layers/domain/repositories/create_backlog_repository.dart';

void main() {
  test('should return create backlog repository not null', () async {
    await Isar.initializeIsarCore(download: true);

    CreateBacklogDataSourceImp dataSource = CreateBacklogDataSourceImp(dataBaseInstance: DataBaseInstance());
    CreateBacklogRepository repository = CreateBacklogRepositoryImp(dataSource);


    var result = repository;
    expect(result, isNotNull);
  });
}
