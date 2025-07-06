import 'package:flutter/material.dart';
import 'package:todolist/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ToDoItem> todoList = [
    ToDoItem("Wash Dishes", false),
    ToDoItem("Do Laundry", true),
    ToDoItem("Buy Groceries", false),
    ToDoItem("Walk the Dog", false),
  ];

  void checkBoxChanged(int index) {
    setState(() {
      todoList[index].isCompleted = !todoList[index].isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEDB0),
      appBar: AppBar(
        title: const Text('Todo List App'),
        backgroundColor: const Color(0xFFD6D85D),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (BuildContext context, index) {
          return TodoList(
            task: todoList[index],
            onChanged: (value) => checkBoxChanged(index),
          );
        },
      ),
    );
  }
}
