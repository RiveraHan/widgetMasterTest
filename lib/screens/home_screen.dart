import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Master'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/progress');
              },
              child: const Text('Progress Widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card');
              },
              child: const Text('Card Widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/quiz');
              },
              child: const Text('Quiz Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
