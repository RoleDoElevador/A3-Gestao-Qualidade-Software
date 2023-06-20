import 'package:taks_management_app/layers/data/DTOs/task_dto.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

import '../../domain/entities/task_entity.dart';


class BackLogDTO extends BackLogEntity{

  int id;
  String title;
  String description;
  String priority;
  DateTime initialData;
  DateTime finalData;
  String progressStatus;

  List<TaskEntity>? taskList;

  BackLogDTO({
  required this.id,
  required this.progressStatus,
  required this.title,
  required this.description,
  required this.priority,
  required this.initialData,
  required this.finalData,
  this.taskList,
  }) : super(
    id: id,
    priority: priority,
    progressStatus: progressStatus,
    title: title,
    description: description,
    initialData: initialData,
    finalData: finalData,
    taskList: taskList,
  );



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'priority': priority,
      'initialData': initialData.millisecondsSinceEpoch,
      'finalData': finalData.millisecondsSinceEpoch,
      'progressStatus': progressStatus
    };
  }

  factory BackLogDTO.fromMap(Map<String, dynamic> map) {
    return BackLogDTO(
      progressStatus: map['progressStatus'] != null ? map['progressStatus'] as String : "",
      id: map['id'] != null ? map['id'] as int : 0,
      title: map['title'] != null ? map['title'] as String : "",
      description: map['description'] != null ? map['description'] as String : "",
      priority: map['priority'] != null ? map['priority'] as String : "",
      initialData: map['initialData'] != null ? DateTime.parse(map['initialData'] ) : DateTime(0),
      finalData: map['finalData'] != null ? DateTime.parse(map['finalData'] ) : DateTime(0),
      taskList: map['taskList'] != null ? List<TaskEntity>.from((map['taskList'] as List<int>).map<TaskDTO?>((x) => TaskDTO.fromMap(x as Map<String,dynamic>),),) : null,
    );
  }
}