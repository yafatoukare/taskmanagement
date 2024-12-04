import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  final Map<String, String> task;

  const TaskDetails({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(task['title']!)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Description: ${task['description']!}'),
            // Ajoutez les détails des dates ici...
          ],
        ),
      ),
    );
  }
}