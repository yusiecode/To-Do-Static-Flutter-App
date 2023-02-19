import 'package:flutter/material.dart';
import 'package:todo_app/screens/splash_screen.dart';
import 'package:todo_app/screens/task_screen.dart';
import 'package:provider/provider.dart';

import 'models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) {
        return TaskData();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
