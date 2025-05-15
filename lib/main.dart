
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'screens/MockupScreenOne.dart';
// // ignore: unused_import
// import 'screens/MockupScreenTwo.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'TMDB Movies App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//          home: const MockupScreenTwo(),
//         //  home: const MockupScreenOne(),
//     );
//   }
// }

import 'package:flutter/material.dart';
// ignore: unused_import
import 'screens/MockupScreenOne.dart';
// ignore: unused_import
import 'screens/MockupScreenTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDB Movies App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/screen_two', // Start with MockupScreenTwo
      routes: {
        '/screen_one': (context) => const MockupScreenOne(), // Route for MockupScreenOne
        '/screen_two': (context) => const MockupScreenTwo(), // Route for MockupScreenTwo
      },
    );
  }
}