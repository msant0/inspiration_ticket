import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BotoesEntradaEmailFacebook extends StatefulWidget {
  final String labelFormaEntrada;
  final IconData iconFormaEntrada;
  final Function() onTap;
  const BotoesEntradaEmailFacebook({
    Key key,
    this.labelFormaEntrada,
    this.iconFormaEntrada,
    this.onTap,
  }) : super(key: key);
  @override
  _BotoesEntradaEmailFacebookState createState() =>
      _BotoesEntradaEmailFacebookState();
}

class _BotoesEntradaEmailFacebookState
    extends State<BotoesEntradaEmailFacebook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonTheme(
        minWidth: 250,
        child: RaisedButton.icon(
          onPressed: () {
            widget.onTap();
          },
          color: Colors.blue[800],
          textColor: Colors.white,
          icon: new Icon(
            widget.iconFormaEntrada,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          label: AutoSizeText(
            widget.labelFormaEntrada,
            presetFontSizes: [14.0, 15.0, 16.0],
          ),
        ),
      ),
    );
  }
}
