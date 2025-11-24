import 'package:aula10/widgets/myappbar.dart';
import 'package:aula10/widgets/mycontainer.dart';
import 'package:aula10/widgets/myelev.dart';
import 'package:aula10/widgets/myfab.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Desafio Flutter - 1",
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Myappbar(),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Myfab(),Myelev(), Mycontainer(),],
            
          ),
        ),
    );
  }
}