class ItemMenuModel {
  String titulo;

  ItemMenuModel({
    this.titulo,
  });

  ItemMenuModel.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
  }
}
