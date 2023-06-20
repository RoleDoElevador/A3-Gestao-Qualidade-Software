import 'package:flutter/material.dart';
import 'package:taks_management_app/layers/presentation/controllers/create_task/create_task_page_controller.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({super.key});
  static const String ROUTE = "/create-task-page";

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

CreateTaskPageController _createTaskPageController = CreateTaskPageController();

class _CreateTaskPageState extends State<CreateTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              color: Color(0xFF2F394B),
            )),
        centerTitle: true,
        title: Text(
          "Create New Task",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: _buidBody(context),
      bottomNavigationBar: _buildButtonCreate(),
    );
  }

  Widget _buidBody(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildDefaultField("Title", _createTaskPageController.tittleTextEditingController, false),
              _buildDefaultField("Initial Data", _createTaskPageController.initialDataTextEditingController, true),
              _buildDefaultField("Final Data", _createTaskPageController.finalDataEditingController, true),
              _buildDefaultField("Description", _createTaskPageController.descriptionTextEditingController, false),
            ],
          ),
        ));
  }

  Widget _buildDefaultField(
      String title, TextEditingController textController, bool isDataField) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        controller: textController,
        maxLines: null,
        style: Theme.of(context).textTheme.headline5,
        decoration: InputDecoration(
            label: Text(title),
            labelStyle: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: const Color(0xFF727272), fontSize: 20),
            suffixIcon: isDataField
                ? const Icon(
                    Icons.watch_later_outlined,
                    color: Colors.black,
                  )
                : null,
            floatingLabelBehavior: FloatingLabelBehavior.always),
      ),
    );
  }

  Widget _buildButtonCreate() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 16),
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: ThemeData().buttonTheme.colorScheme?.tertiary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.07,
          alignment: Alignment.center,
          child: Text(
            "Create",
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
