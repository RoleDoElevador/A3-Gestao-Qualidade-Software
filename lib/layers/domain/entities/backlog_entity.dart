// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

part 'backlog_entity.g.dart';

@collection
class BackLogEntity {
  Id id;
  String title;
  String progressStatus;
  String description;
  String priority;
  DateTime initialData;
  DateTime finalData;

  List<TaskEntity>? taskList;

  BackLogEntity({
    required this.id,
    required this.progressStatus,
    required this.title,
    required this.description,
    required this.priority,
    required this.initialData,
    required this.finalData,
    this.taskList
  });

  bool verifyBacklogIsValid() {
    if (description.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  String getDeadlineData() {
    initializeDateFormatting();
    return DateFormat.yMMMd('en').format(finalData);
  }
}
