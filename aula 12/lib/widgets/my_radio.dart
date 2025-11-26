import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  final String? title;
  const MyRadio({super.key, required this.title});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        value: _value,
        groupValue: 0,
        onChanged: (v) => _value = v!,
         title: Text(widget.title!),
        ),
    );
  }
}