import 'package:for_flutter/widgets/my_alert.dart';
import 'package:for_flutter/widgets/my_radio.dart' ;
import 'package:for_flutter/widgets/my_slider.dart';
import 'package:for_flutter/widgets/my_switch.dart' ;
import 'package:for_flutter/widgets/my_text_field.dart';
import 'package:for_flutter/widgets/my_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:for_flutter/widgets/my_checkbox.dart' ;
import 'package:for_flutter/widgets/my_button.dart';


class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerData = TextEditingController();
  
  double _sliderValue = 0;
  bool _notify = false;
  List<String> _listPrefs = [];
  String _gender = "Masculino";

  @override
  void dispose() {
    _controllerNome.dispose();
    _controllerData.dispose();
    super.dispose();
  }

  void _changeList(pref) {
    (!_listPrefs.contains(pref)
    ? _listPrefs.add(pref)
    : _listPrefs.remove(pref));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Formulário Flutter',
          style: GoogleFonts.flamenco(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MyTitle(title: "Dados Pessoais:"),
              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Nome",
                  isdate: false,
                  controller: _controllerNome,
                  ),
              ),

              SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Data de Nascimento",
                  isdate:true,
                  controller:_controllerData ,
                  ),
              ),

              MyTitle(title: "Gênero:"), 

              SizedBox(height: 16),

              SizedBox(
                child: MyRadio(
                  value: (v){
                    _gender = v!;
                  },
                ),
              ),

              SizedBox(height: 16),

              MyTitle(title: "Preferências:"),

              SizedBox(height: 16),

              SizedBox(
                child: Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyCheckbox(
                      title: "Música",
                      value: _changeList
                      ),
                    MyCheckbox(
                      title: "Esportes",
                      value:_changeList
                      ),
                  ],
                ),
              ),

              SizedBox(
                child: Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyCheckbox(
                      title: "Filmes e Séries",
                      value: _changeList
                      ),
                    MyCheckbox(
                      title: "Culinária",
                      value: _changeList
                      ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              MyTitle(title: "Escolaridade:"),

              SizedBox(height: 16),

              MySlider(
                value: (v){
                    _sliderValue = v!;
                }
              ),

              SizedBox(height: 16),

              MyTitle(title: "Notificações:"),

              SizedBox(height: 16),

              MySwitch(
                title: "Deseja receber notificações?",
                value: (v){
                    _notify = v!;
                }
              ),

              SizedBox(height: 16),

              MyButton(
              title: "Salvar", 
              icon: Icons.save,
              onClick: (){
                print(_controllerNome.text);
                print(_controllerData.text);
                print(_gender);  
                print(_listPrefs);
                print(_sliderValue);
                print(_notify);

                MyAlert.showSimpleDialog(context, "Dados cadatrados",
                 "${_controllerNome.text}\n"
                 "${_controllerData.text}\n"
                 "$_gender\n"
                 "$_listPrefs\n"
                 "$_sliderValue\n"
                 "$_notify\n"
                 );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}