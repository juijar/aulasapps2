import 'package:flutter/material.dart';
import 'package:organizeme/screens/shared/app_drawer.dart';
import 'package:organizeme/screens/tasks/components/task.dart';

class TasksPage extends StatelessWidget {
  TasksPage({super.key});

  final List<Task> _tasks = [

     const Task(
      title: 'ir ao mercado',
      category: 'pessoal',
      hour: TimeOfDay(hour: 16, minute: 0),
    ),

    const Task(
      title: 'reunião',
      category: 'trabalho',
      hour: TimeOfDay(hour: 7, minute: 30)  
    ),

    const Task(
      title: 'ir na consulta',
      category: 'saude',
      hour: TimeOfDay(hour: 8, minute: 20)
    ),

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: 
      FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        ),
      appBar: AppBar(
        title: const Text('OrganizeMe'),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 8,
        ),
        child: Column(
          children: [
            Text(
              'Compromissos do dia',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 32),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, index) 
                => _tasks[index],
                itemCount: _tasks.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
