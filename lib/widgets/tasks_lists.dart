import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final tasks = taskData.task[index];
          return TaskTile(
            tasktitle: tasks.name,
            isChecked: tasks.isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(tasks);
            },
            longPressCallback: () {
              taskData.deleteTask(tasks);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
