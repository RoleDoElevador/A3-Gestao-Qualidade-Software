import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/entities/task_entity.dart';
import 'package:taks_management_app/layers/presentation/UI/pages/create_backlog_page.dart';
import 'package:taks_management_app/layers/presentation/controllers/home/home_controller.dart';

import 'detail_backlog_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String ROUTE = "/home-page";

  @override
  State<HomePage> createState() => _HomePageState();
}

HomePageController _controller = HomePageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Container(
            margin: const EdgeInsets.only(left: 8, top: 8),
            child: Text(
              "Hi, Stepanie",
              style: Theme.of(context).textTheme.headline1,
            )),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16, top: 16),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Container(
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: _controller.scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFilters(context),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 8, bottom: 8, left: 16),
              child: Text("Backlogs", style: Theme.of(context).textTheme.headline4)
            ),
            _buildListCards(context),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigatorBar(context),
    );
  }
}

Widget _buildFilters(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width,
    child: GroupButton(
      buttons: _controller.listOptionsFilter,
      options: GroupButtonOptions(
          mainGroupAlignment: MainGroupAlignment.center,
          borderRadius: BorderRadius.circular(20),
          unselectedColor: const Color(0xFFE0DFDF),
          unselectedShadow: const [],
          selectedColor: Theme.of(context).colorScheme.tertiary,
          selectedShadow: const [],
          buttonHeight: 40,
          textPadding:
              const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15)),
    ),
  );
}

Widget _buildListCards(BuildContext context) {
  return Container(
     height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(8),
    child: ListView.builder(
        itemCount: _controller.mockListBacklogs.length,
        controller: _controller.scrollController,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          List<BackLogEntity> listBacklogs = _controller.mockListBacklogs;
          return GestureDetector(
            onTap: () {
              List<TaskEntity> taskList = [
                TaskEntity(
                    id: 1,
                    title: "Remove the dropped garbage",
                    description: "Remove all garbage in the street",
                    progressStatus: "In progress",
                    initialData: DateTime.now(),
                    finalData: DateTime.now(),
                    idBacklog: 1),
                TaskEntity(
                    id: 2,
                    title: "Clear the trash cans",
                    progressStatus: "In progress",
                    description:
                        "Remove all sacks from the trash cans around the street",
                    initialData: DateTime.now(),
                    finalData: DateTime.now(),
                    idBacklog: 1),
                TaskEntity(
                    id: 2,
                    title: "Clear the trash cans",
                    progressStatus: "In progress",
                    description:
                    "Remove all sacks from the trash cans around the street",
                    initialData: DateTime.now(),
                    finalData: DateTime.now(),
                    idBacklog: 1),
                TaskEntity(
                    id: 2,
                    title: "Clear the trash cans",
                    progressStatus: "In progress",
                    description:
                    "Remove all sacks from the trash cans around the street",
                    initialData: DateTime.now(),
                    finalData: DateTime.now(),
                    idBacklog: 1),
                TaskEntity(
                    id: 2,
                    title: "Clear the trash cans",
                    progressStatus: "In progress",
                    description:
                    "Remove all sacks from the trash cans around the street",
                    initialData: DateTime.now(),
                    finalData: DateTime.now(),
                    idBacklog: 1),
                TaskEntity(
                    id: 2,
                    title: "Clear the trash cans",
                    progressStatus: "In progress",
                    description:
                    "Remove all sacks from the trash cans around the street",
                    initialData: DateTime.now(),
                    finalData: DateTime.now(),
                    idBacklog: 1),
              ];

              BackLogEntity backLogSelected = BackLogEntity(
                  id: 1,
                  title: "Clear the Street",
                  description: "Clear all the street, remove the trash cans "
                      "and the dropped garbage arround the street",
                  progressStatus: "in_progress",
                  priority: "high",
                  initialData: DateTime.now(),
                  finalData: DateTime.now(),
                  taskList: taskList);

              Navigator.of(context).pushNamed(BackLogDetailPage.ROUTE,
                  arguments: backLogSelected);
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.18,
              padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16),
              margin:
                  const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xFF4E4A4A).withOpacity(0.50),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: const Offset(
                          3.0, // Move to right 7.0 horizontally
                          4.0, // Move to bottom 8.0 Vertically
                        ))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          _controller.setFirstCharacterToUpperCase(
                              (listBacklogs[index].title)),
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _controller.returnColorOfPriority(
                                    listBacklogs[index].priority)),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 4, bottom: 4, right: 8, left: 8),
                              child: Text(
                                _controller.setFirstCharacterToUpperCase(
                                    listBacklogs[index].priority),
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                          ),
                          SizedBox(
                            child: IconButton(
                                onPressed: () {},
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.black,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8, right: 16),
                    child: Text(
                      _controller.setFirstCharacterToUpperCase(
                          listBacklogs[index].description),
                      style: Theme.of(context).textTheme.headline3,
                      maxLines: 3,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}

Widget _buildBottomNavigatorBar(BuildContext context) {
  return BottomNavigationBar(
      elevation: 1,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (optionSelected) {
        switch (optionSelected) {
          case 1:
            Navigator.of(context).push(_createRoute(CreateBacklogPage()));
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_filled,
              color: Color(0xFF8A8A8A),
              size: 30,
            )),
        BottomNavigationBarItem(

            label: "",
            icon: Icon(
              Icons.add_circle,
              color: Color(0xFF0B89FE),
              size: 47,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.settings,
              color: Color(0xFF8A8A8A),
              size: 30,
            ))
      ]);
}

Route _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const CreateBacklogPage(),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
