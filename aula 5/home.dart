import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Placeholder(color: const Color.fromARGB(255, 247, 1, 1)),
      appBar: AppBar(
        actions: <Widget>[ 
          IconButton(
            icon: Icon(Icons.settings, 
            color: const Color.fromARGB(255, 255, 0, 0),),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.logout, 
            color: const Color.fromARGB(255, 255, 0, 0),),
            onPressed: () {
            },
          ),
        ],
        centerTitle: true,
        title: Text(
          "Aula 5",
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))
          ),
        backgroundColor: const Color.fromARGB(255, 97, 235, 6),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Flutter",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: Image.asset(
                "lib/assets/sei la.png",
                fit: BoxFit.cover,
                alignment: Alignment.center,
                ),
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              child: Image.asset(
                "lib/assets/so sei.jpeg",
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
                ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                "lib/assets/sonic.jpeg",
                fit: BoxFit.cover,
                alignment: Alignment.center,
                ),
            ),
            //para testar rolagem orizintal dentro da vertical
            SingleChildScrollView(
              child: Row(
                 children: <Widget>[]
              ),
              //fim do teste.
              
            )
          ],
        ),
      ),
    );
  }
}
