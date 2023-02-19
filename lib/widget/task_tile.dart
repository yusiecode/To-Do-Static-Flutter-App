import 'package:flutter/material.dart';

class TaskTiles extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;


  const TaskTiles({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,

  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (isChanged) {
          checkboxCallback(isChanged);
        },
      ),
    );
  }
}
