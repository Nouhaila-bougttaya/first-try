import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/provid.dart';
import 'package:todoey/screens/task_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<listData>(
      create: (context) => listData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
