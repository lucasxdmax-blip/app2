import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyTextField extends StatefulWidget {
  final String? title;
  final bool? isdate;
  final TextEditingController? controller;

  const MyTextField({
    super.key,
     required this.title,
     required this.isdate,
     required this.controller
     });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  DateTime? selectedDate;
  TextEditingController? _controller;

  @override
  Void InitState(){
    _controller = widget.controller!;
    super.initState();
  }

  Future<void> _selectDate() async{
    final DateTime? pickedDate = await showDatePicker(
      context: context,
       firstDate: DateTime(1940),
        lastDate: DateTime(2030),
        initialDate: DateTime.now()
        );

        setState(() {
          selectedDate = pickedDate;
          _controller! = (selectedDate != null)
           ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
           : "Seleciome uma data";
        });
  }

  var maskDate = MaskTextInputFormatter(
    mask: "##/##/####",
    filter: {"#": RegExp(r'[0-9]')}
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: (widget.isdate!)
      ? [maskDate]
       : [],
      controller: _controller,
      decoration: InputDecoration(
        label: Text(widget.title!),
        border: OutlineInputBorder(),
        suffixIcon: (widget.isdate!)
        ? IconButton(onPressed: _selectDate,
          icon: Icon(Icons.import_contacts_outlined))
          : null
      ),
    );
  }
}