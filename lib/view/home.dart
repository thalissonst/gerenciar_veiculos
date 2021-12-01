import 'package:flutter/material.dart';
import 'package:helloworld/components/cardButton.dart';

/** 
 * Classe de View para Tela Inicial
 */
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gerenciamento de Veículos',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Text(
              'Gerencie os veículos do seu interesse',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardButton(myRoute: '/cadastro', myIcon: Icons.add, myTitle: 'Novo', myDescription: 'Cadastra novo veículo'),
                CardButton(myRoute: '/lista', myIcon: Icons.list, myTitle: 'Lista', myDescription: 'Lista os veículos já cadastrados')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardButton(myRoute: '/marca', myIcon: Icons.settings, myTitle: 'Marcas', myDescription: 'Gerenciar as marcas de veículos'),
                CardButton(myRoute: '/sobre', myIcon: Icons.info_outline, myTitle: 'Sobre', myDescription: 'Informações do projeto')
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'O melhor gerenciador de veículos',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
