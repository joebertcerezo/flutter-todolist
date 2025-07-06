import 'package:flutter/material.dart';

class ToDoItem {
  String title;
  bool isCompleted;

  ToDoItem(this.title, this.isCompleted);
}

class TodoList extends StatelessWidget {
  const TodoList({super.key, required this.task, this.onChanged});

  final ToDoItem task;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 0, left: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFEAD8A4),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Checkbox(
              value: task.isCompleted,
              onChanged: onChanged,
              activeColor: Color(0xFFF68537),
              side: BorderSide(color: Colors.black, width: 2),
            ),
            Text(
              task.title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                decoration: task.isCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
