import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Challenge',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          shape: Border(
            bottom: BorderSide(
              color: Colors.blue,
              width: 5.0
            )
          )
        ),
        primarySwatch: Colors.blue,
      ),
      home:  const Home(),
    );
  }
}

