import 'package:flutter/material.dart';
import 'package:helloworld/components/notificacao.dart';
import 'package:helloworld/models/marcaModel.dart';

/**
 * Controller de operação de Marca de Veículos
 */
class MarcaController {
  final scaffoldKey = GlobalKey<ScaffoldState>(); //chave do Scaffold

  /**
  * Busca as marcas cadastradas
  */
  Future<List<MarcaModel>> listarMarcas() async {
    List<MarcaModel> myList = List<MarcaModel>(); //Modelo de Marca
    try {
      MarcaModel item1 = new MarcaModel('1', 'Chevrolet');
      MarcaModel item2 = new MarcaModel('2', 'Volkswagen');
      MarcaModel item3 = new MarcaModel('3', 'Toyota');
      MarcaModel item4 = new MarcaModel('4', 'Porsche');
      MarcaModel item5 = new MarcaModel('5', 'BMW');

      myList.addAll([
        item1,
        item2,
        item3,
        item4,
        item5,
      ]);

      return myList; //Retorna a Marca
    } catch (e) {
      print(e); //TODO
    }
  }
}
