import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width:MediaQuery.of(context).size.width * 0.5,
        backgroundColor:Color.fromARGB(255, 0, 0, 0),
        elevation: 20,
        child: Column(
          children: <Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 40),
                child: Text(
                  "Bem vindo!",
                  style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ),
              Divider(color: const Color.fromARGB(255, 1, 255, 158),),
              ListTile(
                leading: Icon(Icons.account_balance_wallet_sharp),
                title: Text("contato"),
                textColor: const Color.fromARGB(255, 255, 254, 252),
                iconColor: Colors.amber,
              ),
             Divider(color: const Color.fromARGB(255, 1, 255, 158),),
              ListTile(
                leading: Icon(Icons.ad_units_sharp),
                title: Text("configuração"),
                textColor: const Color.fromARGB(255, 255, 254, 252),
                iconColor: Colors.amber,
              ),
              Divider(color: const Color.fromARGB(255, 1, 255, 158),
              ),
              ListTile(
                leading: Icon(Icons.add_chart_outlined),
                title: Text("Preferencias"),
                textColor: const Color.fromARGB(255, 255, 254, 252),
                iconColor: Colors.amber,
              ) 
          ],
        ),
      );
  }
}
