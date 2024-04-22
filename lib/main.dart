import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/taskprovider.dart';
import 'package:flutter_application_1/tasklist.dart';
import 'package:provider/provider.dart';
import 'addtasklist.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskModel(), // Provide an instance of TaskModel
      child: MyApp(),
    ),
  );
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