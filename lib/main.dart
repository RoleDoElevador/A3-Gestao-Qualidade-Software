import 'package:flutter/material.dart';
import 'package:taks_management_app/core/inject.dart';
import 'package:taks_management_app/core/theme.dart';
import 'package:taks_management_app/layers/presentation/UI/pages/create_backlog_page.dart';
import 'package:taks_management_app/layers/presentation/UI/pages/create_task_page.dart';
import 'package:taks_management_app/layers/presentation/UI/pages/home_page.dart';

import 'layers/presentation/UI/pages/detail_backlog_page.dart';

void main() {
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MainTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.ROUTE,
      routes: {
        HomePage.ROUTE: (context) => const HomePage(),
        BackLogDetailPage.ROUTE: (context) => const BackLogDetailPage(),
        CreateBacklogPage.ROUTE: (context) => const CreateBacklogPage(),
        CreateTaskPage.ROUTE: (context) => const CreateTaskPage()
      },
    );
  }
}
