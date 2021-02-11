import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inspiration_ticket/view/pages/authorized/home/home.dart';
import 'package:inspiration_ticket/view/pages/login/components/btnEntradaEmailFacebook.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var borderSideDivider = BorderSide(
      color: Colors.cyan[600],
      width: 4,
    );
    return Scaffold(
      backgroundColor: Colors.cyanAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BotoesEntradaEmailFacebook(
              labelFormaEntrada: "Entrar com Facebook",
              iconFormaEntrada: FontAwesomeIcons.facebook,
              onTap: () => {
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HomePage();
                    },
                  ),
                ),
              },
            ),
            BotoesEntradaEmailFacebook(
              labelFormaEntrada: "Entrar com e-mail",
              iconFormaEntrada: Icons.email,
              onTap: () => {
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HomePage();
                    },
                  ),
                ),
              },
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border(
                    bottom: borderSideDivider,
                    top: borderSideDivider,
                    left: borderSideDivider,
                    right: borderSideDivider,
                  ),
                ),
              ),
            ),
            Text("Primeira vez por aqui?")
          ],
        ),
      ),
    );
  }
}
