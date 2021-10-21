import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  int get tasksLength {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addToTasks(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updatetask(Task taskItem) {
    taskItem.toggleDone();
    notifyListeners();
  }

  void removeTask(Task taskItem) {
    _tasks.remove(taskItem);
    notifyListeners();
  }
}
