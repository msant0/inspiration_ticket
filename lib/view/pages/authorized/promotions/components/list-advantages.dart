import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspiration_ticket/models/advantage_ticket_model.dart';
import 'package:inspiration_ticket/shared/routers/transaction/style.dart';
import 'package:inspiration_ticket/shared/utils/utils.dart';

class ItemAdvantageWidget extends StatefulWidget {
  final AdvantageTicketModel itemAdvantage;
  ItemAdvantageWidget({
    this.itemAdvantage,
  });

  @override
  _ItemAdvantageWidgetState createState() => _ItemAdvantageWidgetState();
}

class _ItemAdvantageWidgetState extends State<ItemAdvantageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              imageAdvantage(widget.itemAdvantage.pathImage),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  informationAdvantage(widget.itemAdvantage.information),
                  sizedBox(),
                  btnKnowMore(),
                ],
              ),
            ],
          ),
          divider(),
        ],
      ),
    );
  }

  Widget divider() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        color: Colors.grey,
        width: double.infinity,
        height: 1,
      ),
    );
  }

  Widget sizedBox() {
    return SizedBox(
      height: Utils().mediaQuery(context, 0.03),
    );
  }

  Widget imageAdvantage(String path) {
    return Image.asset(
      path,
      height: Utils().mediaQuery(context, 0.25),
      width: Utils().mediaQuery(context, 0.25),
    );
  }

  Widget informationAdvantage(String information) {
    return Container(
      width: Utils().mediaQuery(context, 0.6),
      padding: const EdgeInsets.all(16.0),
      child: AutoSizeText(
        information,
        presetFontSizes: [12.0],
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget btnKnowMore() {
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
        width: Utils().mediaQuery(context, 0.3),
        height: Utils().mediaQuery(context, 0.07),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                'SAIBA MAIS',
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
