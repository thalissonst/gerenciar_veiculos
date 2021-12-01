import 'package:flutter/material.dart';

/** 
 * Classe de View para tela de Cadastro
 */

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Cadastrar Veículo'),
          backgroundColor: Colors.teal,
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(10),
          color: Colors.teal,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //Espaço
                    SizedBox(height: 20),
                    //Instruções
                    Text(
                      'Preencha os dados abaixo para cadastrar um novo veículo!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    //Espaço
                    const SizedBox(height: 15),
                    //Form
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: _gerarInputDecoration('Nome'),
                    ),
                    //Espaço
                    const SizedBox(height: 15),
                    //Form
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: _gerarInputDecoration('Marca'),
                    ),
                    //Espaço
                    const SizedBox(height: 15),
                    //Form
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: _gerarInputDecoration('Ano'),
                    ),

                    ListTile(
                      title: SizedBox(
                        height: 44,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Text('Cadastrar'),
                          color: Colors.orange,
                          disabledColor: Colors.orange.withAlpha(100),
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    ListTile(
                      title: SizedBox(
                        height: 44,
                        child: TextButton(
                          child: Text('Ver lista de cadastrados'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/lista');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /**
   * Metodo de retornar a formatação de um imput
   * @param [label] Label do input
   */
  InputDecoration _gerarInputDecoration(String label) {
    return InputDecoration(
      hintStyle: TextStyle(color: Colors.orange),
      border: const OutlineInputBorder(),
      isDense: true,
      labelText: label,
      labelStyle: TextStyle(color: Colors.orange),
    );
  }
}
