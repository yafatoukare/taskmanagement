import 'package:flutter/material.dart';
import 'task_details.dart';
import 'task_form.dart';

// ignore: use_key_in_widget_constructors
class TaskList extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {'title': 'Tâche 1', 'description': 'Description 1'},
    {'title': 'Tâche 2', 'description': 'Description 2'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Liste des Tâches')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]['title']!),
            subtitle: Text(tasks[index]['description']!),
            onTap: () {
              // Navigation vers les détails de la tâche
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetails(task: tasks[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TaskForm()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}