import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aula 4',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(75, 0, 217, 255)),
      ),
      home: const MyHomePage(title: 'contador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
    void _clearCouter() {
    setState(() {

      _counter= 0;
    });
  }
    void _decrementCounter() {
    setState(() {

      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text(
              'Contagem:',style:TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic
              ) ,
              ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCounter,
                   child: Text("+")
                   ),
                   ElevatedButton(
                  onPressed: _incrementCounter,
                   child: Text("Zerar")
                   ),
                   ElevatedButton(
                  onPressed: _incrementCounter,
                   child: Text("-")
                   ),
                   
              ],
            )
          ],
        ),
      ),
    );
  }
}
