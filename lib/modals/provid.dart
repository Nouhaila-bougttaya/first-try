import 'package:flutter/material.dart';
import 'package:todoey/modals/Task.dart';

class listData extends ChangeNotifier {
  List<Task> Tasks = [];
  void taskadd2(String nameAdd) {
    Tasks.add(Task(name: nameAdd));

    notifyListeners();
  }

  void checking(int index) {
    Tasks[index].toogleDone();
    notifyListeners();
  }
}
