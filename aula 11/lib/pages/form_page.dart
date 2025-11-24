import 'package:flutter/material.dart';
import 'package:for_flutter/widgets/my_radio.dart';
import 'package:for_flutter/widgets/my_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "formulario Flutter",
          style:  GoogleFonts.aBeeZee(),
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(

          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(

                padding: EdgeInsetsGeometry.only(bottom: 8),
                child: Text(
                  "Dados Pessoas:",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24,
                  fontWeight: FontWeight.bold
                  ),
                ),
                ),
                
                SizedBox(
                  width: double.infinity,
                  child: MyTextfield(),
                ),

                SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  child: MyTextfield(),
                ),
                
                  SizedBox(height: 10),

                Padding(
                padding: EdgeInsetsGeometry.only(bottom: 8),
                child: Text(
                  "Genero:",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24,
                  fontWeight: FontWeight.bold
                  ),
                ),
                ),
               
                 SizedBox(height: 10),

                 Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyRadio(),
                    MyRadio()
                  ],
                 ),

            ],
          ),
        ),
      ),
    );
  }
}