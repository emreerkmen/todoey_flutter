import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'Done lesson'),
    Task(name: 'Learn english'),
    Task(name: 'Speak with girlfriend'),
    Task(name: 'Improve yourself'),
    Task(name: 'Improve yourself'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
