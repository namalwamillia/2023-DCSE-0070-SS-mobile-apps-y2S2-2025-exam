import 'package:exam_movie_app/screens/MockupScreenOne.dart';
// ignore: unused_import
import 'package:exam_movie_app/screens/MockupScreenTwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exams_move_app',
      theme: ThemeData(
        

       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 155, 221, 237)),
      ),
      home: const Mockupscreenone(),
      // home: const Mockupscreentwo(),
    );
  }
}


