import 'package:inspiration_ticket/models/places.model.dart';
import 'package:inspiration_ticket/repositories/establishments.repository.dart';

class EstablishmentsController {
  EstablishmentsRepository _repositoryEstablishments;
  EstablishmentsController() {
    _repositoryEstablishments = new EstablishmentsRepository();
  }

  Future<List<PlaceModel>> getEstablishmentsNearby() async {
    var data = await _repositoryEstablishments.getEstablishmentsNearby();
    return data;
  }
}
