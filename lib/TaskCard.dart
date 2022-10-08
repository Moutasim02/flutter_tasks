import 'package:flutter/material.dart';
import 'package:flutter_tasks/Task.dart';
class TaskCard extends StatelessWidget {
  final Task task;
  final Function removeTask;

  const TaskCard({super.key, required this.task, required this.removeTask});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(task.name),
        trailing: IconButton(
          icon: const Icon(
            Icons.clear,
            color: Colors.red,
          ),
          onPressed: () {
            removeTask();
          },
        ),
      ),
    );
  }
}