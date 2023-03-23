import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/model/Tela3.dart';
import 'package:projeto/model/dadospessoas.dart';

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
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 93, 179, 173),
        appBar: AppBar(
          title: Text("Dados"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _nome,
                maxLength: 30,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Nome")
                ),
              ),
            //////////////////////////////////////////////////////
              TextField(
                controller: _idade,
                maxLength: 30,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Idade")
                ),
              ),
            /////////////////////////////////////////////////////////
              TextField(
                controller: _altura,
                maxLength: 30,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Altura")
                ),
              ),
            /////////////////////////////////////////////////////////
              TextField(
                controller: _peso,
                maxLength: 30,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("Peso")
                ),),
            /////////////////////////////////////////////////////////.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            
                  SizedBox(width: 50),
        
                  Text("Feminino"),
                  Radio(
                    value: _fem,
                    groupValue: _group,
                    onChanged: (v){
                      setState(() {
                        _group = 1;
                      });
                    }
                  ),
                ],
              ),

              SizedBox(height: 50),

              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)
                  ),
                  onPressed: (){
                    DadosPessoas dp = DadosPessoas(
                      nome: _nome.text,
                      idade: int.parse(_idade.text),
                      peso: double.parse(_peso.text),
                      altura: double.parse(_altura.text),
                      genero: (_group == 0) ? "Masculino" : "Feminino"
                    );

                    print(dp.calcular());
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Tela3(dp: dp)));
                  }, 
                  child: Text(
                    "Calcular",
                    style: GoogleFonts.abel(
                      fontSize: 40 
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}