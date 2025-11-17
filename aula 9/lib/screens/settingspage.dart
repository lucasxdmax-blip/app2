import 'package:flutter/material.dart';

class MySttingspage extends StatelessWidget {
   final String? title;

 const MySttingspage({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
    );
  }
}