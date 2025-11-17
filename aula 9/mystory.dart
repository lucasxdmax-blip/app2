import 'package:flutter/material.dart';

class Mystory extends StatelessWidget {
 final String? title;
 final String? image;

  const Mystory({super.key, required this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20, right: 5, left: 20 ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundColor: const Color.fromARGB(155, 55, 35, 231),
            backgroundImage: NetworkImage(image!),
          ),
          Text(title!)
        ],
      ),
    );
  }
}
