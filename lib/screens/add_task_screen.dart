import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({this.addTaskCallback});

  final Function addTaskCallback;
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500),
            ),
            TextField(
              decoration: InputDecoration(
                  //fillColor: Colors.lightBlueAccent,
                  ),
              onChanged: (value) {
                newTaskTitle = value;
              },
              autofocus: true,
            ),
            FlatButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              //this is necessary for sigth of button
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
