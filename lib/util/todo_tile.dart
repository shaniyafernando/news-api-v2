import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  const ToDoTile({Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 0),
        child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Checkbox(value: taskCompleted, onChanged: onChanged),
                  Text(taskName),
                ],
              ),
            )));
  }
}
