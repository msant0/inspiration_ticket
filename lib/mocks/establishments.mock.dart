import 'package:dio/dio.dart';

class EstablishmentsMock {
  getEstablishmentsNearby() async {
    await Future.delayed(new Duration(seconds: 1));
    Response response = new Response();

    response.statusCode = 200;
    response.data = [
      {
        'name': 'mugnus',
        'address': 'doctor silverama',
      }
    ];

    return response;
  }
}
