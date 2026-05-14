import 'package:flutter/material.dart';
import 'package:mozzarella_pizza/screens/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mozzarella Pizza',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.red)),
      home: const MainPage(),
    );
  }
}

