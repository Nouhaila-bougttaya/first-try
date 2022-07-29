import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task.dart';
import 'package:todoey/modals/Task.dart';

import '../modals/provid.dart';

class listTask extends StatelessWidget {
  final List<Task> Tasks;
  listTask(this.Tasks);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: Provider.of<listData>(
              context,
            ).Tasks.length,
            itemBuilder: (context, index) {
              return task(Provider.of<listData>(context).Tasks[index].isDone,
                  Provider.of<listData>(context).Tasks[index].name, index);
            }),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
      ),
    );
  }
}
