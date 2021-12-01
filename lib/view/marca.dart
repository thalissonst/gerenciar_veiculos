import 'package:flutter/material.dart';
import 'package:helloworld/controllers/marcaController.dart';
import 'package:helloworld/models/marcaModel.dart';

/** 
 * Classe de View para listar Marcas cadastradas
 */
class Marca extends StatefulWidget {
  @override
  _MarcaState createState() => _MarcaState();
}

class _MarcaState extends State<Marca> {
  MarcaController _marcaController = MarcaController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _marcaController.scaffoldKeyMarca,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cadastrar Marcas'),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    setState(() {
                      value == null || value == '' ? 'Informe uma marca!' : '';
                    });
                  },
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                      labelText: 'Adicionar marca de veículo',
                      labelStyle: TextStyle(color: Colors.orange),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.add),
                      )),
                  keyboardType: TextInputType.text,
                ),
                Divider(),
                Text(
                  'Marcas Cadastradas:',
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                  child: Container(
                    child: FutureBuilder(
                      future: _marcaController.listarMarcas(),
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                          case ConnectionState.none:
                            return Container(
                              width: 200.0,
                              height: 200.0,
                              alignment: Alignment.center,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                                strokeWidth: 5.0,
                              ),
                            );
                          default:
                            if (snapshot.hasError) {
                              return Container(
                                child: Text('Não foi possível obter os dados!'),
                              );
                            } else {
                              return Container(child: gerarItens(context, snapshot));
                            }
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget gerarItens(BuildContext context, AsyncSnapshot snapshot) {
    List<MarcaModel> listarMarcas = snapshot.data;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listarMarcas.length,
      itemBuilder: (context, index) {
        return Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  listarMarcas[index].name,
                  style: TextStyle(fontSize: 18, color: Colors.teal),
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.orange,
                  ),
                )
              ],
            ));
      },
    );
  }
}
