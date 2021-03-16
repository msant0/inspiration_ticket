class PlaceModel {
  String name;
  String address;

  PlaceModel({
    this.name,
    this.address,
  });

  PlaceModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['adress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.name != null) {
      data['name'] = this.name;
    }

    if (this.address != null) {
      data['address'] = this.address;
    }

    return data;
  }
}
