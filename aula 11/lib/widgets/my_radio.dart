import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

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
        groupValue: 1,
        onChanged: (v) => _value = v!,
         title: Text("Genero"),
        ),
    );
  }
}