class PlaceModel {
  String name;
  String address;
  String distance;

  PlaceModel({
    this.name,
    this.address,
    this.distance,
  });

  PlaceModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.name != null) {
      data['name'] = this.name;
    }

    if (this.address != null) {
      data['address'] = this.address;
    }

    if (this.distance != null) {
      data['distance'] = this.distance;
    }

    return data;
  }
}
