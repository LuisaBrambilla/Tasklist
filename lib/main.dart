// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/tasklist.dart';
import 'addtasklist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String initialRoute = '/';
  static const String addTaskRoute = '/addTask';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initialRoute,
      routes: {
        initialRoute: (context) => TaskListScreen(),
        addTaskRoute: (context) => AddTaskScreen(),
      },
    );
  }
}
