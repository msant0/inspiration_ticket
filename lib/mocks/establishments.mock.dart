import 'package:dio/dio.dart';

class EstablishmentsMock {
  getEstablishmentsNearby() async {
    await Future.delayed(new Duration(seconds: 1));
    Response response = new Response();

    response.statusCode = 200;
    response.data = [
      {
        'name': 'Fam S Burguer',
        'address': 'R Manuel Barbalho De Lima, 51',
        'distance': '128 m',
      },
      {
        'name': 'Ike Sushi',
        'address': 'R Dr Oscar Egidio de Araujo, 45',
        'distance': '188 m',
      },
      {
        'name': 'Rudrigues Restaurante',
        'address': 'Est D Joao Nery, 2',
        'distance': '195 m',
      },
      {
        'name': 'Sabor do Pastel',
        'address': 'Est Dom Joao Nery, 13',
        'distance': '199 m',
      },
      {
        'name': 'Padaria Renascer',
        'address': 'Avenida Marechal Tito, 4084',
        'distance': '199 m',
      },
      {
        'name': 'Bar e Restaurante Murans',
        'address': 'Av Mal Tito, 4606',
        'distance': '247 m',
      },
    ];

    return response;
  }
}
