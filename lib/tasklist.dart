// tasklist.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:provider/provider.dart';
import './provider/taskprovider.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: Consumer<TaskModel>(
        builder: (context, taskModel, child) {
          return ListView.builder(
            itemCount: taskModel.tasks.length,
            itemBuilder: (context, index) {
              final task = taskModel.tasks[index];
              return Dismissible(
                key: Key(task),
                onDismissed: (direction) {
                  taskModel.removeTask(index);
                },
                background: Container(
                  color: Colors.red,
                  child: Icon(Icons.delete),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20.0),
                ),
                child: ListTile(
                  title: Text(task),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyApp.addTaskRoute);
        },
        tooltip: 'Add Task',
        child: Icon(Icons.add),
      ),
    );
  }
}
