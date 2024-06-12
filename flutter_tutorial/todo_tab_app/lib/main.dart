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

  void moveTask(String task, bool toCompleted) {
    setState(() {
      if (toCompleted) {
        activeTasks.remove(task);
        completedTasks.add(task);
      } else {
        completedTasks.remove(task);
        activeTasks.add(task);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
          child: ListView(
            children: activeTasks.map((task) {
              return ListTile(
                title: Text(task),
                leading: const Icon(Icons.info),
                trailing: IconButton(
                  icon: const Icon(Icons.check),
                  onPressed: () => moveTask(task, true),
                ),
              );
            }).toList(),
          ),
        ),
        Center(
          child: ListView(
            children: completedTasks.map((task) {
              return ListTile(
                title: Text(task),
                leading: const Icon(Icons.info),
                trailing: IconButton(
                  icon: const Icon(Icons.undo),
                  onPressed: () => moveTask(task, false),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
