import 'package:flutter/material.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple ToDo App',
      home: ToDoListScreen(),
    );
  }
}

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(tasks[index]),
          onTap: () => _deleteTask(index),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTask(),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addTask() {
    // Prompt user to enter a task
    TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('New Task'),
        content: TextField(controller: controller),
        actions: [
          MaterialButton(
            child: const Text('Add'),
            onPressed: () {
              setState(() {
                tasks.add(controller.text);
                controller.clear();
              });
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void _deleteTask(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Task'),
        content: const Text('Are you sure you want to delete this task?'),
        actions: [
          MaterialButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          MaterialButton(
            child: const Text('Delete'),
            onPressed: () {
              setState(() {
                tasks.removeAt(index);
              });
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
