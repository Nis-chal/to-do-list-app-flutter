import 'package:flutter/material.dart';
import 'package:listapp/models/task_data.dart';
import 'package:listapp/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:listapp/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     create: (_) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
