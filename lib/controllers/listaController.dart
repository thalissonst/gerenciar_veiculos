import 'package:flutter/material.dart';
import 'package:helloworld/components/notificacao.dart';
import 'package:helloworld/models/listaModel.dart';

/**
 * Controller de operação de Lista de Veículos
 */
class ListaController {
  final scaffoldKey = GlobalKey<ScaffoldState>(); //chave do Scaffold

  /**
  * Busca os veículos cadastrados
  */
  Future<List<ListaModel>> listar() async {
    List<ListaModel> myList = List<ListaModel>(); //Modelo de lista

    try {
      ListaModel item1 = new ListaModel('1', 'Astra', 'Chevrolet', '2011');
      ListaModel item2 = new ListaModel('2', 'Gol', 'Volkswagen', '2012');
      ListaModel item3 = new ListaModel('3', 'Corolla', 'Toyota', '2018');
      ListaModel item4 = new ListaModel('4', 'Panamera', 'Porsche', '2012');
      ListaModel item5 = new ListaModel('5', '320i', 'BMW', '2016');

      myList.addAll([
        item1,
        item2,
        item3,
        item4,
        item5,
      ]);

      return myList;
    } catch (e) {
      print(e);
    }
  }
}
