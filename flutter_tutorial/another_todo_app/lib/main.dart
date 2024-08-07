import 'todo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const TodoApp());

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Todo(),
      child: const MaterialApp(
        home: TodoPage(),
      ),
    );
  }
}

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context);
    TextEditingController todoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Todo App'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Type todo and hit enter',
              contentPadding: EdgeInsets.all(10),
            ),
            controller: todoController,
            onSubmitted: (value) {
              todo.add(value);
              todoController.clear();
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todo.todos.length,
              itemBuilder: (context, index) {
                return EditableListTile(
                  initialValue: todo.todos[index],
                  onEdit: (newValue) {
                    todo.edit(index, newValue);
                  },
                  onDelete: () {
                    todo.remove(todo.todos[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class EditableListTile extends StatefulWidget {
  final String initialValue;
  final ValueChanged<String> onEdit;
  final VoidCallback onDelete;

  const EditableListTile({
    super.key,
    required this.initialValue,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  // ignore: library_private_types_in_public_api
  _EditableListTileState createState() => _EditableListTileState();
}

class _EditableListTileState extends State<EditableListTile> {
  late TextEditingController _controller;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: _isEditing
          ? TextField(
              controller: _controller,
              onSubmitted: (newValue) {
                widget.onEdit(newValue);
                setState(() {
                  _isEditing = false;
                });
              },
            )
          : Text(widget.initialValue),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(_isEditing ? Icons.check : Icons.edit),
            onPressed: () {
              setState(() {
                if (_isEditing) {
                  widget.onEdit(_controller.text);
                }
                _isEditing = !_isEditing;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: widget.onDelete,
          ),
        ],
      ),
      onTap: () {
        setState(() {
          _isEditing = true;
        });
      },
    );
  }
}
