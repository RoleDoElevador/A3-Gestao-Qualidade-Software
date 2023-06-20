import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/data/datasources/local/delete_backlog_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/delete_backlog_repository_imp.dart';
import 'package:taks_management_app/layers/domain/repositories/delete_backlog_repository.dart';

void main() {
  test('should return Delete Backlog Repository not null', () {
    
   DeleteBacklogDataSourceImp dataSource = DeleteBacklogDataSourceImp();
   DeleteBacklogRepository repository = DeleteBacklogRepositoryImp(dataSource);

    var result = repository;
    expect(result, isNotNull);
  });
}
