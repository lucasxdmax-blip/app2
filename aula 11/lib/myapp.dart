import 'package:flutter/material.dart';
import 'package:for_flutter/pages/form_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Formulario flutter",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: FormPage(),
    );
  }
}