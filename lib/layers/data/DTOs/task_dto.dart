import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

class TaskDTO extends TaskEntity{

  int? idBacklog;
  int? id;
  String? title;
  String? description;
  DateTime? initialData;
  DateTime? finalData;

  TaskDTO({
    required this.idBacklog,
    required this.id,
    required this.title,
    required this.description,
    required this.initialData,
    required this.finalData
  }) : super(
    id: id,
    description: description,
    initialData: initialData,
    finalData: finalData,
    title: title,
    idBacklog: idBacklog
  );

Map<String, dynamic> toMap() {
  return <String, dynamic>{
    'idBacklog': idBacklog,
    'id': id,
    'title': title,
    'description': description,
    'initialData': initialData?.millisecondsSinceEpoch,
    'finalData': finalData?.millisecondsSinceEpoch,
  };
}

factory TaskDTO.fromMap(Map<String, dynamic> map) {
  return TaskDTO(
    idBacklog: map['idBacklog'] != null ? map['idBacklog'] as int : 0,
    id: map['id'] != null ? map['id'] as int : 0,
    title: map['title'] != null ? map['title'] as String : "",
    description: map['description'] != null ? map['description'] as String : "",
    initialData: map['initialData'] != null ? DateTime.parse(map['initialData']) : DateTime(0),
    finalData: map['finalData'] != null ? DateTime.parse(map['finalData']) : DateTime(0),
  );
}
}