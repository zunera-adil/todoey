import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? tasktitle;
  final Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;
  TaskTile(
      {this.isChecked,
      this.tasktitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          tasktitle!,
          style: TextStyle(
              decoration: isChecked! ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            checkColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: (newValue) {
              checkboxCallback(newValue);
            }));
  }
}
