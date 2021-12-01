class ListaModel {
  String id;
  String name;
  String marca;
  String ano;

  ListaModel(String id, String name, String marca, String ano) {
    this.id = id;
    this.name = name;
    this.marca = marca;
    this.ano = ano;
  }

  ListaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    marca = json['marca'];
    ano = json['ano'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['marca'] = this.marca;
    data['ano'] = this.ano;

    return data;
  }
}
