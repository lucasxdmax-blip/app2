import 'package:flutter/material.dart';

class Mystory extends StatelessWidget {
 final String? title = "Perfil";
  const Mystory({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 40,
          backgroundColor: const Color.fromARGB(155, 55, 35, 231),
          child: FlutterLogo(size: 30,),
        ),
        Text(title!)
      ],
    );
  }
}
