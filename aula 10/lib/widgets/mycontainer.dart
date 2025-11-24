import 'package:flutter/material.dart';

class Mycontainer extends StatefulWidget {
  const Mycontainer({super.key});

  @override
  State<Mycontainer> createState() => _MycontainerState();
}

class _MycontainerState extends State<Mycontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,       // ← altura
      width: 200,        // ← largura (opcional)
      color: const Color.fromARGB(255, 2, 141, 255), // ← cor (opcional)
      child: const Center(
        child: Text(
          "Eu amo Flutter",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
