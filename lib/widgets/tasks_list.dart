import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          taskTitle: context.watch<TaskData>().tasks[index].name,
          isChecked: context.watch<TaskData>().tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            // setState(() {
            //   widget.tasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: context.watch<TaskData>().tasks.length,
    );
  }
}
