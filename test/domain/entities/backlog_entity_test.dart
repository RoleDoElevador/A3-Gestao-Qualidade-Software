import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

void main() {
  test("should return that the backlog is valid if description is not empty", () {
    BackLogEntity backlogTestModel = BackLogEntity(
      title: 'test',
      priority: 'high',
      progressStatus: 'in_progress',
      id: 0,
      description: 'Description Test',
      initialData: DateTime.now(),
      finalData: DateTime.now(),
    );

    expect(true, backlogTestModel.verifyBacklogIsValid());
  });

  test("should return that the backlog is invalid if description is empty", () {
    BackLogEntity backlogTestModel = BackLogEntity(
      title: 'test',
      priority: 'high',
      progressStatus: 'in_progress',
      id: 0,
      description: '',
      initialData: DateTime.now(),
      finalData: DateTime.now(),
    );

    expect(false, backlogTestModel.verifyBacklogIsValid());
  });
}
