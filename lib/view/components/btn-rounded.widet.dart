import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspiration_ticket/shared/routers/transaction/style.dart';
import 'package:inspiration_ticket/shared/utils/utils.dart';

class BtnRoundedComponent extends StatefulWidget {
  final String label;
  final double width;

  BtnRoundedComponent({
    @required this.label,
    this.width = 0.3,
  });

  @override
  _BtnRoundedComponentState createState() => _BtnRoundedComponentState();
}

class _BtnRoundedComponentState extends State<BtnRoundedComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: StyleShared().primaryColor),
          borderRadius: BorderRadius.circular(
            Utils().mediaQuery(
              context,
              0.2,
            ),
          ),
        ),
        width: Utils().mediaQuery(context, widget.width),
        height: Utils().mediaQuery(context, 0.07),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                widget.label,
                style: GoogleFonts.nunito(
                  color: StyleShared().primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                presetFontSizes: [12.0, 10.0],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
