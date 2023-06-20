import 'package:flutter/foundation.dart';
import 'package:todoey/models/taskk1.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'Buy bread'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs')
  ];
  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addText(String newTaskTitle) {
    final tasks = Task(name: newTaskTitle);
    _task.add(tasks);
    notifyListeners();
  }

  void updateTask(Task tasks) {
    tasks.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task tasks) {
    _task.remove(tasks);
    notifyListeners();
  }
}
