import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            ),
            BotoesEntradaEmailFacebook(
              labelFormaEntrada: "Entrar com e-mail",
              iconFormaEntrada: Icons.email,
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

class BotoesEntradaEmailFacebook extends StatelessWidget {
  final String labelFormaEntrada;
  final IconData iconFormaEntrada;
  const BotoesEntradaEmailFacebook({
    Key key,
    this.labelFormaEntrada,
    this.iconFormaEntrada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonTheme(
        minWidth: 250,
        child: RaisedButton.icon(
          onPressed: () {},
          color: Colors.blue[800],
          textColor: Colors.white,
          icon: new Icon(
            iconFormaEntrada,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          label: AutoSizeText(
            labelFormaEntrada,
            presetFontSizes: [14.0, 15.0, 16.0],
          ),
        ),
      ),
    );
  }
}
