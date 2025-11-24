import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget {
  const Myappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("desafio"),
        backgroundColor: const Color.fromARGB(255, 7, 240, 143),
      ),
    );
  }
}