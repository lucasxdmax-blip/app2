import 'package:aula5/acreens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aula 5',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 2, 2)),
      ),
      home:MyHome() ,
    );
  }
}

