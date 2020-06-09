import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a taskOne'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool) {},
      ),
    );
  }
}
