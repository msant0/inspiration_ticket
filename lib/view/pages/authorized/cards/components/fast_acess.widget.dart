import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FastAcessComponent extends StatefulWidget {
  final String label;
  final IconData icon;
  FastAcessComponent({
    this.label = 'default',
    @required this.icon,
  });

  @override
  _FastAcessComponentState createState() => _FastAcessComponentState();
}

class _FastAcessComponentState extends State<FastAcessComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      height: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.12,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: new Icon(
                    widget.icon,
                    color: Colors.black,
                  ),
                ),
              ),
              AutoSizeText(
                widget.label,
                textAlign: TextAlign.center,
                style: GoogleFonts.aldrich(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
