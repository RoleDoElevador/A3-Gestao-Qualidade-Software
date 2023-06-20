import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

import '../../controllers/create_backlog/create_backlog_page_controller.dart';

class CreateBacklogPage extends StatefulWidget {
  const CreateBacklogPage({super.key});
  static const String ROUTE = "/create-backlog-page";

  @override
  State<CreateBacklogPage> createState() => _CreateBacklogPageState();
}

CreateBacklogPageController _createBacklogPageController =
    CreateBacklogPageController();

class _CreateBacklogPageState extends State<CreateBacklogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.close,
              color: Color(0xFF2F394B),
            )),
        centerTitle: true,
        title: Text(
          "CREATE NEW BACKLOG",
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
              _buildDefaultField(
                  "Title",
                  _createBacklogPageController.tittleTextEditingController,
                  false),
              _buildDefaultField(
                  "Initial Data",
                  _createBacklogPageController.initialDataTextEditingController,
                  true),
              _buildDefaultField(
                  "Final Data",
                  _createBacklogPageController.finalDataEditingController,
                  true),
              _buildPriorityField(context),
              _buildDefaultField(
                  "Description",
                  _createBacklogPageController.descriptionTextEditingController,
                  false),
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

  Widget _buildPriorityField(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32, bottom: 32),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 16),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Text(
              "Priority",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: const Color(0xFF727272), fontSize: 16),
            ),
          ),
          GroupButton(
            buttons: _createBacklogPageController.listOptionsPriority,
            controller: _createBacklogPageController.groupButtonController,
            options: GroupButtonOptions(
                spacing: 50,
                mainGroupAlignment: MainGroupAlignment.center,
                borderRadius: BorderRadius.circular(15),
                unselectedColor: const Color(0xFFE0DFDF),
                unselectedShadow: const [],
                selectedColor: Theme.of(context).colorScheme.tertiary,
                selectedShadow: const [],
                buttonHeight: 40,
                textPadding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 16, left: 16)),
          ),
        ],
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
