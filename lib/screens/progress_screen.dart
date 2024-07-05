import 'package:flutter/material.dart';
import 'package:widget_master/widgets/interactive_progress.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progreso'),
      ),
      body: InteractiveProgress(),
    );
  }
}
