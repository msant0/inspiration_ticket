class AdvantageTicketModel {
  String information;
  String pathImage;

  AdvantageTicketModel({
    this.information,
    this.pathImage,
  });

  AdvantageTicketModel.fromJson(Map<String, dynamic> json) {
    information = json['information'];
    pathImage = json['pathImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['information'] = this.information;
    data['pathImage'] = this.pathImage;

    return data;
  }
}
