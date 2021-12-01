class MarcaModel {
  String id;
  String name;

  // MarcaModel({this.id, this.name});

  MarcaModel(String id, String name) {
    this.id = id;
    this.name = name;
  }

  MarcaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;

    return data;
  }
}
