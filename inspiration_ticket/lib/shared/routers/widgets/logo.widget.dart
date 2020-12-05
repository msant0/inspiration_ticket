import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ImageProvider logo = AssetImage("images/icon.png");
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Hero(
        tag: "logo",
        transitionOnUserGestures: true,
        child: Image(
          image: logo,
          height: MediaQuery.of(context).size.height * 0.12,
        ),
      ),
    );
  }
}
