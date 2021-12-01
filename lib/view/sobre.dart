import 'package:flutter/material.dart';

/** 
 * Classe de View para tela de Sobre
 */

class Sobre extends StatelessWidget {
  final TextStyle styleDescription = TextStyle(fontSize: 18, color: Colors.white70);
  final TextStyle styleTitle = TextStyle(fontSize: 18, color: Colors.white);
  final double spaceSizedBox = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sobre o App'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Container(
        color: Colors.teal,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                customRow('Informação', 'Esta aplicação visa gerenciar veículos'),
                SizedBox(
                  height: spaceSizedBox,
                ),
                customRow('Desenvolvedor', 'Thalisson Aquino'),
                SizedBox(
                  height: spaceSizedBox,
                ),
                customRow('E-mail', 'thalisson.aquino@souunilavras.com'),
                SizedBox(
                  height: spaceSizedBox,
                ),
                customRow('Telefone', '(35) 99999-0000'),
                SizedBox(
                  height: spaceSizedBox,
                ),
                Divider(),
                SizedBox(
                  height: spaceSizedBox,
                ),
                customRow('Disciplina', 'Desenvolvimento para Dispositivos Móveis'),
                SizedBox(
                  height: spaceSizedBox,
                ),
                customRow('Professor', 'André Lima Salgado'),
                SizedBox(
                  height: spaceSizedBox,
                ),
                customRow('Curso', 'Análise e Desenvolvimento de Sistemas'),
                SizedBox(
                  height: spaceSizedBox,
                ),
                customRow('Universidade', 'Unilavras - Centro Universitário de Lavras'),
                SizedBox(
                  height: spaceSizedBox,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column customRow(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: styleTitle,
        ),
        Text(
          value,
          style: styleDescription,
          maxLines: 5,
          softWrap: true,
        ),
      ],
    );
  }
}
