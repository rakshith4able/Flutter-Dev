import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressCallback;
  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.onLongPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        onLongPressCallback();
      },
      child: ListTile(
        title: Text(
          taskTitle,
          style: isChecked
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          onChanged: (checkboxState) {
            checkboxCallback(checkboxState);
          },
          value: isChecked,
        ),
      ),
    );
  }
}
