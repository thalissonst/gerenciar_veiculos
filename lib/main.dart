import 'package:flutter/material.dart';
import 'package:helloworld/view/home.dart';
import 'package:helloworld/view/cadastro.dart';
import 'package:helloworld/view/lista.dart';
import 'package:helloworld/view/marca.dart';
import 'package:helloworld/view/sobre.dart';

void main() {
  runApp(CadastroVeiculos());
}

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => Home(),
  "/cadastro": (BuildContext context) => Cadastro(),
  "/lista": (BuildContext context) => Lista(),
  "/marca": (BuildContext context) => Marca(),
  "/sobre": (BuildContext context) => Sobre(),
};

class CadastroVeiculos extends StatefulWidget {
  @override
  _CadastroVeiculosState createState() => _CadastroVeiculosState();
}

class _CadastroVeiculosState extends State<CadastroVeiculos> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciador de Veículos',
      debugShowCheckedModeBanner: false, //Desabilita a faixa de debug
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: routes,
    );
  }
}
