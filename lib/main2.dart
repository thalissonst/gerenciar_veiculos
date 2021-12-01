import 'package:flutter/material.dart';

// Prática 1 - Criação de app mínimo Flutter.

// main() {
//   runApp(Text(
//     'Thalisson Aquino',
//     textDirection: TextDirection.ltr,
//   ));
// }

// Prática 2 - Criação de app mínimo Flutter.

main() {
  runApp(MinhaTela());
}

class MinhaTela extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    // return Text('Thalisson Aquino', textDirection: TextDirection.ltr);
    return Center(
        child: Container(
      child: Text('Primeiro Container', textDirection: TextDirection.ltr),
    ));
  }
}
