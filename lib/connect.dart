import 'package:http/http.dart' as http;

void main() async{

  var url = Uri.https('localhost:5001', '/Veiculos/Listar');
  
  var resposta = await http.get(url);

  print(resposta.body)
}