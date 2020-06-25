import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Done lesson'),
    Task(name: 'Learn english'),
    Task(name: 'Speak with girlfriend'),
    Task(name: 'Improve yourself'),
    Task(name: 'Improve yourself'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTitle) {
    _tasks.add(Task(name: newTitle, isDone: false));
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
