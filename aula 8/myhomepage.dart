import 'package:aula6/model/profile.dart';
import 'package:aula6/widgets/mycard.dart';
import 'package:aula6/widgets/mydrawer.dart';
import 'package:aula6/widgets/mystory.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  //Criando lista de dados
  List<Profile> listadados = [
    Profile(name: "Vasco", image: "", like: true),
    Profile(name: "dou", image: "", like: false),
    Profile(name: "sei la", image: "", like: true),
    Profile(name: "nosei", image: "", like: false),
    Profile(name: "so vai", image: "", like: true)
  ];

   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 251, 1),
        title: Text("aula 6"),
      ),
      drawer: MyDrawer(),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
         SizedBox(
          height: 200,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listadados.length,
            itemBuilder: (context, item) {
              return Mystory(
                title: listadados[item].name,
                image: listadados[item].image
                ) ;
            }
           ),
         ),
         SizedBox(
          height: 200,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listadados.length,
            itemBuilder: (context, item) {
              return MyCard(
                title: listadados[item].name,
                image: listadados[item].image,
                like:  listadados[item].like,
                 );
            }
           ),
         )
        ],
      ),
    ),
  );
 }
}
