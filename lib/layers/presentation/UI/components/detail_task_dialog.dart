import 'package:flutter/material.dart';
import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

class TaskDetailsModal extends StatelessWidget {

  TaskEntity selectedTask;

  TaskDetailsModal({required this.selectedTask});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 16),
          child: const Icon(Icons.timer_sharp, color: Colors.yellow, size: 120),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 32),
          child: Text("Status: ${selectedTask.progressStatus}",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white
              )
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTitle(context),
              // _buildCancelButton(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 8),
      child: Text(
        selectedTask.title!.toUpperCase(),
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  // Widget _buildCancelButton(BuildContext context) {
  //   return Container(
  //     height: 50,
  //     margin: const EdgeInsets.all(8),
  //     child: ElevatedButton(
  //       style: ButtonStyle(
  //         backgroundColor: MaterialStateProperty.all<Color>(
  //             Theme.of(context).colorScheme.tertiary),
  //       ),
  //       child: Text("Close", style: Theme.of(context).textTheme.button),
  //       onPressed: () => Navigator.of(context).pop(),
  //     ),
  //   );
  // }
}
