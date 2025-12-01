import 'package:flutter/material.dart';
import 'package:for_flutter/widgets/my_button.dart';
import 'package:for_flutter/widgets/my_checkbox.dart';
import 'package:for_flutter/widgets/my_radio.dart';
import 'package:for_flutter/widgets/my_slider.dart';
import 'package:for_flutter/widgets/my_switch.dart';
import 'package:for_flutter/widgets/my_text_field.dart';
import 'package:for_flutter/widgets/my_title.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  double _sliderValue = 0;
  bool _notify = false;
  List<String> _ListPrefs = [];
  String _gender = "Tamanco";

  void _changeList(pref) {
    (!_ListPrefs.contains(pref))
    ? _ListPrefs.add(pref)
    : _ListPrefs.remove(pref);
  }

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
                    MyRadio(
                      title: "Tamanco",
                      value: (v){
                        _gender = v!;
                      },
                      ),
                    MyRadio
                    (title: "fascaino",
                    value: (v){
                      _gender = v!;
                    },
                    )
                  ],
                 ),

                       SizedBox(height: 10),

                MyTitle(title: "Preferencias"),

                 SizedBox(height: 10),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyCheckbox(
                      title: "musica",
                      value: _changeList,
                      ),
                    MyCheckbox(
                      title: "Esportes",
                      value: _changeList,
                      ),
                  ],
                 ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyCheckbox(
                      title: "Flimes",
                      value: _changeList,
                      ),
                    MyCheckbox(
                      title: "Culinaria",
                      value: _changeList,
                      ),
                  ],
                 ),

                 SizedBox(height: 10),

                 MyTitle(title: "Escolaridade"),

                 SizedBox(height: 10),
                 

                 MySlider(
                  value: (v){
                      _sliderValue = v!;
                  }
                  
                 ),

                 SizedBox(height: 10),

                 MyTitle(title:"vasco"),

                 MySwitch(
                  title: "deseja receber o vasco",
                  value: (v){
                      _notify =v!;
                  },
                  ),

                 SizedBox(height: 10),

                 MyButton(
                  title: "salvar",
                   icon: Icons.save,
                   onclick: (){
                    print(_sliderValue);
                    print(_notify);
                    print(_ListPrefs);
                   },
                   )


            ],
          ),
        ),
      ),
    );
  }
}