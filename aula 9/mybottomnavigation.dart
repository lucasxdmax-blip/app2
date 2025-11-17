import 'package:aula6/screens/settingspage.dart';
import 'package:flutter/material.dart';

class MybottomNavigation extends StatefulWidget {
  const MybottomNavigation({super.key});

  @override
  State<MybottomNavigation> createState() => _MybottomNavigationState();
}

class _MybottomNavigationState extends State<MybottomNavigation> {
  int _index = 0;



  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color.fromARGB(232, 221, 168, 168),
      unselectedItemColor: const Color.fromARGB(255, 255, 17, 0),
      onTap: (i) {
         setState(() {
           _index = i;
           Switch(_index) {
            case 1: Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) =>
               MySttingspage(title: "Comfiguraçãoes"))
            );
           }
         });
        },
      currentIndex: _index,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.mail,color: const Color.fromARGB(255, 0, 255, 157),),
        label: "contatos"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings,color: const Color.fromARGB(255, 0, 255, 157),),
        label: "configuraçãos",
        ),
    ]
    );
  }
}
