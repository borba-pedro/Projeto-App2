import 'package:flutter/material.dart';
import 'package:projeto/model/dadospessoas.dart';
import 'package:projeto/teladados.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FYTNESS CAL',
      theme: ThemeData(
    
        primarySwatch: Colors.green,
      ),
      home: TelaInicio()
    );
  }
}

