import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.35,
      child: FlareActor(
        "images/icon_meal.flr",
        animation: "animation",
        isPaused: false,
      ),
    );
  }
}
