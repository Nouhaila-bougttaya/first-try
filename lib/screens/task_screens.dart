import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/Task.dart';
import 'package:todoey/screens/addtask.dart';

import '../modals/provid.dart';
import '../widgets/tasck_list.dart';
import '../widgets/task.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////// //// adding a task////////////////////

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            showModalBottomSheet<void>(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                builder: (BuildContext context) {
                  return Addtask();
                });
          },
          backgroundColor: Colors.lightBlue.shade400,
          child: const Icon(Icons.add)),

      ////////////////////////// UI designe //////////////////////////

      backgroundColor: Colors.lightBlue.shade400,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 200, left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.list,
                  size: 30,
                  color: Colors.lightBlue.shade400,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "todoey",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                "Tasks",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),

          /////////////////////////////// the list call ///////////////////
          listTask(Provider.of<listData>(context).Tasks)
        ],
      ),
    );
  }
}
