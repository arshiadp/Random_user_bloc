import 'package:flutter/material.dart';
import 'package:random_users/layers/home.dart';
import 'package:random_users/layers/result_page.dart';

void main() {
  runApp(const RandomUserApp());
}

class RandomUserApp extends StatelessWidget {
  const RandomUserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Users Application',
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent),
      routes: {
        '/': (context) => Home(),
        ResultPage.routeName: (context) => ResultPage(),
      },
    );
  }
}
