import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_master/providers/quiz_provider.dart';
import 'package:widget_master/screens/card_screen.dart';
import 'package:widget_master/screens/home_screen.dart';
import 'package:widget_master/screens/progress_screen.dart';
import 'package:widget_master/screens/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuizProvider()),
      ],
      child: MaterialApp(
        title: 'Widget Master',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/progress': (context) => const ProgressScreen(),
          '/card': (context) => const CardScreen(),
          '/quiz': (context) => const QuizScreen(),
        },
      ),
    );
  }
}
