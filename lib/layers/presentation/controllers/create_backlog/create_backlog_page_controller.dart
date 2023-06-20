import 'package:flutter/cupertino.dart';
import 'package:group_button/group_button.dart';

import '../../../../core/utils/enums/priority_enum.dart';

class CreateBacklogPageController {
  TextEditingController tittleTextEditingController = TextEditingController();
  TextEditingController initialDataTextEditingController =
      TextEditingController();
  TextEditingController finalDataEditingController = TextEditingController();
  TextEditingController descriptionTextEditingController =
      TextEditingController();

  List<String> listOptionsPriority = [
    priorityEnumMap[PriorityEnum.hight]!,
    priorityEnumMap[PriorityEnum.medium]!,
    priorityEnumMap[PriorityEnum.low]!,
  ];

  GroupButtonController groupButtonController = GroupButtonController();


}
