import 'package:flutter/material.dart';

class TaskTitle extends StatefulWidget {
  @override
  _TaskTitleState createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTitle> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a taskOne',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkBoxState: isChecked,
        toggleCheckboxState: checkboxCallback,
        /*toggleCheckboxState:(bool checkboxState) {
                                setState(() {
                                  isChecked = checkboxState;
                                });
                              } */
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkBoxState, this.toggleCheckboxState});

  final bool checkBoxState;
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckboxState,
    );
  }
}
