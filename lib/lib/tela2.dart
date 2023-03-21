import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  TextEditingController _nome = TextEditingController();
  TextEditingController _idade = TextEditingController();
  TextEditingController _altura = TextEditingController();
  TextEditingController _peso = TextEditingController(); 
  int _masc = 0, _fem = 1;
  int _group = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        //colocar título
      ),
      body: Column(
        children: [
          TextField(
            controller: _nome,
            maxLength: 30,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text("Nome")
            ),
          ),

          TextField(),
          TextField(),
          TextField(),

          Text("Masculino"),
          Radio(
            value: _masc,
            groupValue: _group,
            onChanged: (v){
              setState(() {
                _group = 0;
              });
            }
          ),

          Text("Feminino"),
          Radio(
            value: _fem,
            groupValue: _group,
            onChanged: (v){
              setState(() {
                _group = 1;
              });
            }
          )
        ],
      ),
    );
  }
}