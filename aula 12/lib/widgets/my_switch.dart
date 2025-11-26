import 'package:flutter/material.dart';

class MySwitch extends StatelessWidget {
  final String? title;

  const MySwitch({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: false,
      onChanged: (b) {},
      title: Text(title!),
       );
  }
}