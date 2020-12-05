import 'package:flutter/material.dart';

//Heey, sabia que esse widget aqui é o pai de toda a aplicação?
class MyMaterialApp extends StatefulWidget {
  final Widget _defaultHome;
  //Esse carinha aqui serve para configurar as rotas no ponto única que realiza a chamada
  final Route<dynamic> Function(RouteSettings) routes;

  MyMaterialApp(this._defaultHome, this.routes);
  @override
  _MyMaterialAppState createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // saber porque usar o dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: MaterialApp(
        title: "Ticket Refeição",
        color: Colors.white,
        onGenerateRoute: widget.routes,
        debugShowCheckedModeBanner: false,
        home: widget._defaultHome,
      ),
    );
  }
}
