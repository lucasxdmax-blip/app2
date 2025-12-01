import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  final ValueChanged<String>? value;
  final String? title;
  const MyRadio({super.key, required this.title, required this.value});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String _value = "Tamanco";
  

  @override
  Widget build(BuildContext context) {
    return RadioGroup(
      groupValue: _value,
      onChanged: (v){
        setState(() {
          _value = v.toString();
          widget.value!(v.toString());
        });
      },
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: RadioListTile(
              value: "Tamanco",
              title: Text("Tamamco"),
              controlAffinity: ListTileControlAffinity.leading,
              )
            ),

            Expanded(
            child: RadioListTile(
              value: "fascaino",
              title: Text("fascaino"),
              controlAffinity: ListTileControlAffinity.leading,
              )
            ),
        ],
       )
       );
  }
}