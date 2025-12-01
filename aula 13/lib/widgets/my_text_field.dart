import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  final String? title;

  const MyTextfield({super.key, required this.title});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      //onChanged: (value) => _controller.text = value,
      decoration: InputDecoration(
        label: Text (widget.title!),
        border: OutlineInputBorder(),
      ),
    );
  }
}