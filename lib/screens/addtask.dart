import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/Task.dart';

import '../modals/provid.dart';

TextEditingController textControll = TextEditingController();

class Addtask extends StatelessWidget {
  Addtask();

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      child: Column(children: [
        Text(
          "Add text",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        TextFormField(
          autofocus: true,
          textAlign: TextAlign.center,
          controller: textControll,
        ),
        SizedBox(
          height: 10,
        ),
        MaterialButton(
          height: 10,
          onPressed: () {
            Provider.of<listData>(context, listen: false)
                .taskadd2(textControll.text);
            textControll.clear();
            Navigator.pop(context);
          },
          child: Text(
            "add",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.blue.shade400,
        )
      ]),
    );
  }
}
