import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspiration_ticket/shared/routers/fade-router.transaction.dart';
import 'package:inspiration_ticket/shared/routers/widgets/logo.widget.dart';
import 'package:inspiration_ticket/view/pages/login/login.page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadSplash();
  }

  void _loadSplash() async {
    await Future.delayed(
      new Duration(milliseconds: 2000),
    );

    Widget _defaultHome = Container(
      child: LoginPage(),
    );
    Navigator.of(context).pushAndRemoveUntil(
      FadeRoute(
        page: _defaultHome,
      ),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Logo(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ComponenteSubtituloLogo(
                    subtitulo: "IFome! Uma marca",
                  ),
                  ComponenteSubtituloLogo(
                    subtitulo: "Delicinhaa",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ComponenteSubtituloLogo extends StatelessWidget {
  final subtitulo;
  const ComponenteSubtituloLogo({Key key, this.subtitulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      subtitulo,
      style: GoogleFonts.balooBhaina(
        color: Colors.blueGrey[900],
      ),
      presetFontSizes: [
        16.0,
        17.0,
      ],
    );
  }
}
