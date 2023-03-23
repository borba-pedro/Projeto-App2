import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/model/dadospessoas.dart';

class Tela3 extends StatefulWidget {
  DadosPessoas? dp;

  Tela3({super.key, this.dp});

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 93, 179, 173),
      appBar: AppBar(
        title: Text("Informações"),
      ),

      drawer: Drawer(
       backgroundColor: Color.fromARGB(255, 93, 179, 173), 
       child: Column(
        children: [
          ListTile( 
            title: Text("Sobre o aplicativo"),
             
            subtitle: Text("Olá, Este aplicativo tem o intuito de informar quantas calorias você necessita por dia, com o principal objetivo de auxiliar você a manter um estilo de vida mais saudável. "),
          
          )
           
        ],
       ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250),
            Text(
              "Resultado: ${widget.dp!.calcular()}",
              style: GoogleFonts.abel(
                fontSize: 26
              )
            ),
          ],
        ),
      ),
    );
  }

  /* Text(
              "${widget.dp}",
              style: GoogleFonts.abel(
                fontSize: 26
              )
            ),
            */
}