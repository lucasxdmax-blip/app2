import 'package:flutter/material.dart';
import 'package:for_flutter/widgets/my_button.dart';
import 'package:for_flutter/widgets/my_checkbox.dart';
import 'package:for_flutter/widgets/my_radio.dart';
import 'package:for_flutter/widgets/my_slider.dart';
import 'package:for_flutter/widgets/my_switch.dart';
import 'package:for_flutter/widgets/my_text_field.dart';
import 'package:for_flutter/widgets/my_title.dart';
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
              MyTitle(title: "Dados Pessoais"),
                
                SizedBox(
                  width: double.infinity,
                  child: MyTextfield(title: "Nome",),
                ),

                SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  child: MyTextfield(title: "Data de Nacimento",),
                ),
                
                  SizedBox(height: 10),

                MyTitle(title: "Genero"),
               
                 SizedBox(height: 10),

                 Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyRadio(title: "Tamanco"),
                    MyRadio(title: "fascaino")
                  ],
                 ),

                       SizedBox(height: 10),

                MyTitle(title: "Preferencias"),

                 SizedBox(height: 10),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyCheckbox(title: "musica"),
                    MyCheckbox(title: "Esportes"),
                  ],
                 ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyCheckbox(title: "Flimes"),
                    MyCheckbox(title: "Culinaria"),
                  ],
                 ),

                 SizedBox(height: 10),

                 MyTitle(title: "Escolaridade"),

                 SizedBox(height: 10),
                 

                 MySlider(),

                 SizedBox(height: 10),

                 MyTitle(title:"vasco"),

                 MySwitch(title: "deseja receber o vasco",),

                 SizedBox(height: 10),

                 MyButton(
                  title: "salvar",
                   icon: Icons.save
                   )


            ],
          ),
        ),
      ),
    );
  }
}