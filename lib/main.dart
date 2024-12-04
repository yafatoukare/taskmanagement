import 'package:flutter/material.dart';
import 'task_list.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion des Tâches',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TaskList(), // Assurez-vous que TaskList est défini.
    );
  }
}