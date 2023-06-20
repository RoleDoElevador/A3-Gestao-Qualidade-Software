import 'package:flutter/material.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

class BackLogDetailPageController {
  BackLogDetailPageController();

  late BackLogEntity backLogSelected;

  Color returnColorOfPriority() {
    String string = backLogSelected.priority.toLowerCase().trim();
    if (string.contains('high')) {
      return const Color.fromRGBO(239, 79, 79, 1);
    } else if (string.contains('medium')) {
      return const Color.fromRGBO(221, 208, 89, 1);
    } else {
      return const Color.fromRGBO(119, 206, 128, 1);
    }
  }

  String setFirstCharacterToUpperCase() {
    String newString = backLogSelected.priority.replaceFirst(
        backLogSelected.priority[0], backLogSelected.priority[0].toUpperCase());
    return newString;
  }
}