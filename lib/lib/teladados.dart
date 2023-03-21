import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/tela2.dart';

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 93, 179, 173),
      body: Center(
        child: Container(
          width:  MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.all(30),
               child: Image(
                image: AssetImage("image.png"),
                height: MediaQuery.of(context).size.height * 0.3,
               ),
             ),
             
             SizedBox(height: 50),

              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Tela2()));
                  }, 
                  child: Text("Iniciar",
                   style: GoogleFonts.abel(
                    fontSize: 40 
                   ),
                   ),
                  ),
              ),
            ],
          ),
        ),
      )
      );
  }
}