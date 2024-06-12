import 'package:flutter/material.dart';

void main() => runApp(const TodoApp());

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Todo App'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Active'),
                Tab(text: 'Completed'),
              ],
            ),
          ),
          body: const TodoTabs(),
        ),
      ),
    );
  }
}

class TodoTabs extends StatefulWidget {
  const TodoTabs({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TodoTabsState createState() => _TodoTabsState();
}

class _TodoTabsState extends State<TodoTabs> {
  List<String> activeTasks = ['Task 1', 'Task 2'];
  List<String> completedTasks = ['Task 3', 'Task 4'];

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
      ],
    );
  }
}
