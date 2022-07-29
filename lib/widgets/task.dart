import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/provid.dart';

class task extends StatelessWidget {
  task(this.ischecked, this.tasktitle, this.index);
  final bool ischecked;
  final String tasktitle;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(tasktitle),
        trailing: Checkbox(
          value: ischecked,
          onChanged: (newvalue) {
            Provider.of<listData>(context, listen: false).checking(index);
          },
        ));
  }
}
