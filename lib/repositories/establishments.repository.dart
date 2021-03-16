import 'package:dio/dio.dart';
import 'package:inspiration_ticket/mocks/establishments.mock.dart';
import 'package:inspiration_ticket/models/places.model.dart';

class EstablishmentsRepository {
  Future<List<PlaceModel>> getEstablishmentsNearby() async {
    Response response = await EstablishmentsMock().getEstablishmentsNearby();
    List<PlaceModel> establishments = new List<PlaceModel>();

    for (Map map in response.data) {
      PlaceModel item = PlaceModel.fromJson(map);
      establishments.add(item);
    }

    return establishments;
  }
}
