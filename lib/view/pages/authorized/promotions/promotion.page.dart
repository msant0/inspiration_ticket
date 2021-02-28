import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspiration_ticket/models/advantage_ticket_model.dart';
import 'package:inspiration_ticket/shared/routers/transaction/style.dart';
import 'package:inspiration_ticket/shared/utils/utils.dart';

import 'components/list-advantages.dart';

class PromotionPage extends StatefulWidget {
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  // CONTROLLERS
  Utils utils = new Utils();

  // VARIABLES
  List<AdvantageTicketModel> listAdvantages = new List<AdvantageTicketModel>();

  @override
  void initState() {
    super.initState();
    _initPage();
  }

  _initPage() async {
    listAdvantages.addAll(
      [
        new AdvantageTicketModel(
          pathImage: 'images/food.png',
          information:
              'Seguros para proteger sua família, sua casa e seus bens? Temos.',
        ),
        new AdvantageTicketModel(
          pathImage: 'images/food.png',
          information:
              'Ganhe descontos Ticket na Drogaria São Paulo e Drogaria Pacheco.',
        ),
      ],
    );
    await Future.delayed(new Duration(milliseconds: 100));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            titleWithRedLine("Vantagens Ticket para você"),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: listAdvantages.length,
                itemBuilder: (context, index) => ItemAdvantageWidget(
                  itemAdvantage: listAdvantages[index],
                ),
              ),
            ),
            dividerContainerInformations(),
            cuponLine(),
          ],
        ),
      ),
    );
  }

  Widget titleWithRedLine(String label) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: utils.mediaQuery(context, 0.1),
            height: utils.mediaQuery(context, 0.01),
            color: Colors.red,
          ),
          SizedBox(
            width: utils.mediaQuery(context, 0.02),
          ),
          AutoSizeText(
            label,
            style: GoogleFonts.nunito(
              color: StyleShared().primaryColor,
              fontWeight: FontWeight.bold,
            ),
            presetFontSizes: [20],
          ),
        ],
      ),
    );
  }

  Widget cuponLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titleWithRedLine(
          "Cupons",
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: AutoSizeText(
            "Reservados",
            style: GoogleFonts.nunito(
              color: StyleShared().secondaryColor,
              fontWeight: FontWeight.bold,
            ),
            presetFontSizes: [20],
          ),
        ),
      ],
    );
  }

  Widget dividerContainerInformations() {
    return Container(
      width: Utils().mediaQuery(context, double.infinity),
      height: Utils().mediaQuery(context, 0.1),
      color: Colors.grey[200],
    );
  }
}
