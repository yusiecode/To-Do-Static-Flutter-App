import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTiles(
                isChecked: task.isDone,
                taskTitle: task.title,
                checkboxCallback: (bool value) {
                  taskData.updateTask(task);
                },
              );
            },
          ),
        );
      },
    );
  }
}
