import 'package:flutter/material.dart';
import 'package:todolist/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  final List<ToDoItem> todoList = [
    ToDoItem(title: "Wash Dishes", isCompleted: false),
    ToDoItem(title: "Walk the Dog", isCompleted: true),
    ToDoItem(title: "Buy Groceries", isCompleted: false),
  ];

  void checkBoxChanged(int index) {
    setState(() {
      todoList[index].isCompleted = !todoList[index].isCompleted;
    });
  }

  void saveTask() {
    setState(() {
      todoList.add(ToDoItem(title: _controller.text));
      _controller.clear();
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Add more todo...",
                    filled: true,
                    fillColor: Color(0xFFEAD8A4),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF68537)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF68537)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: saveTask,
              backgroundColor: Color(0xFFF68537),
              child: Icon(Icons.add, size: 30),
            ),
          ],
        ),
      ),
      // bottomSheet: BottomSheet(
      //   onClosing: () => {},
      //   builder: (BuildContext context) {
      //     return Container(
      //       height: 50,
      //       color: const Color(0xFFEAD8A4),
      //       child: const Center(child: Text('Made by: Joebert L. Cerezo')),
      //     );
      //   },
      // ),
    );
  }
}
