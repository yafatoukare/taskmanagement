import 'package:flutter/material.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TaskFormState createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajouter Tâche')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Titre'),
                onSaved: (value) => title = value!,
                validator: (value) => value!.isEmpty ? 'Entrez un titre' : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                onSaved: (value) => description = value!,
                validator: (value) => value!.isEmpty ? 'Entrez une description' : null,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Renvoyer les données à la page de liste des tâches
                    Navigator.pop(context, {'title': title, 'description': description});
                  }
                },
                child: const Text('Sauvegarder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}