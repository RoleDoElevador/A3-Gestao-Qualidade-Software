import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:taks_management_app/core/utils/enums/status_backlog_enum.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:mobx/mobx.dart';

class HomePageController {
  HomePageController();

  List<String> listOptionsFilter = [
    statusBacklogEnumMap[StatusBacklogEnum.inProgress]!,
    statusBacklogEnumMap[StatusBacklogEnum.upcoming]!,
    statusBacklogEnumMap[StatusBacklogEnum.completed]!,
  ];
  ScrollController scrollController = ScrollController();

  Future<void> getBacklogList() async {
    final getListBacklogs = GetIt.instance.get<GetListBackLogsDatasource>();

    final result = getListBacklogs;


  }

  List<BackLogEntity> mockListBacklogs = [

   BackLogEntity(
      title: 'teste',
      priority: 'high',
      progressStatus: "in_progress",
      id: Isar.autoIncrement,
      description: 'To numa mesa com quatro cadeiras, aqui já tem três enganados por ela'
          ' bebendo esperando a rasteira, que tu vai levar dela, fica'
          ' tranquilo que a aquarta cadeira te espera',
      initialData: DateTime.now(),
      finalData: DateTime.now()
   ),
   BackLogEntity(
     title: 'teste2',
     priority: 'low',
     progressStatus: "completed",
     id: Isar.autoIncrement,
     description: 'teste descricao',
     initialData: DateTime.now(),
     finalData: DateTime.now()
   ),
   BackLogEntity(
     title: 'teste2',
     priority: 'medium',
     progressStatus: 'upcoming',
     id: Isar.autoIncrement,
     description: 'teste descricao',
     initialData: DateTime.now(),
     finalData: DateTime.now()
   ),
];

  Color returnColorOfPriority(String priority) {
    String string = priority.toLowerCase().trim();
    if (string.contains('high')) {
      return const Color.fromRGBO(239, 79, 79, 1);
    } else if (string.contains('medium')) {
      return const Color.fromRGBO(221, 208, 89, 1);
    } else {
      return const Color.fromRGBO(119, 206, 128, 1);
    }
  }

  String setFirstCharacterToUpperCase(String string) {
    String newString = string.replaceFirst(string[0], string[0].toUpperCase());
    return newString;
  }
}
