import 'package:flutter/material.dart';
import 'package:flutter_tasks/Task.dart';
import 'package:flutter_tasks/TaskCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Task> tasks = [
    Task(name: "Read a Book"),
    Task(name: 'Temp Task'),
    Task(name: 'Do My Home Work')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tasks'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskCard(
              task: tasks[index],
              removeTask: () {
                setState(() {
                  tasks.remove(tasks[index]);
                });
              },
            );
          },
        ),
      ),
    );
  }
}

