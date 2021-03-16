import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspiration_ticket/shared/routers/transaction/style.dart';
import 'package:inspiration_ticket/shared/utils/utils.dart';
import 'package:inspiration_ticket/view/components/btn-rounded.widet.dart';

class EstablishmentsPage extends StatefulWidget {
  @override
  _EstablishmentsPageState createState() => _EstablishmentsPageState();
}

class _EstablishmentsPageState extends State<EstablishmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 40.0,
            ),
            color: Colors.lightBlue[200],
            height: Utils().mediaQuery(context, 0.4),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(FontAwesomeIcons.mapMarkedAlt),
                  title: tituloAppBar('Rede Credenciada'),
                  trailing: Icon(FontAwesomeIcons.search),
                ),
                cardTypesWidget(),
              ],
            ),
          ),
          bannerPromotionsWidget(),
          nearbyPlacesWidget(1),
        ],
      ),
    );
  }

  Widget tituloAppBar(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: GoogleFonts.nunito(
            color: StyleShared().primaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget cardTypesWidget() {
    return Container(
      padding: const EdgeInsets.only(right: 10.0),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: Utils().mediaQuery(context, 0.15),
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Container(
                  child: Container(
                    width: Utils().mediaQuery(context, 0.5),
                    child: Card(
                      color: Colors.grey[200],
                      child: Row(
                        children: [
                          SizedBox(
                            width: Utils().mediaQuery(context, 0.02),
                          ),
                          Icon(
                            FontAwesomeIcons.solidCreditCard,
                            color: Colors.lightBlue[500],
                          ),
                          SizedBox(
                            width: Utils().mediaQuery(context, 0.02),
                          ),
                          AutoSizeText(
                            'Ticket Restaurante',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                              color: StyleShared().primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bannerPromotionsWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 15.0),
      child: Row(
        children: [
          iconPromotionFormatterWidget('images/uber.png'),
          iconPromotionFormatterWidget('images/ifood.png'),
          iconPromotionFormatterWidget('images/rappi.png'),
          textPromotionWidget('Fique em casa e', 'pague com Ticket'),
          BtnRoundedComponent(
            label: 'VER MAIS',
            width: 0.24,
          ),
        ],
      ),
    );
  }

  Widget iconPromotionFormatterWidget(String path) {
    return Container(
      height: Utils().mediaQuery(context, 0.1),
      width: Utils().mediaQuery(context, 0.1),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        image: new DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget textPromotionWidget(String labelTop, String labelBottom) {
    return Container(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            labelTop,
            style: GoogleFonts.aldrich(color: StyleShared().primaryColor),
          ),
          AutoSizeText(
            labelBottom,
            style: GoogleFonts.aldrich(color: StyleShared().primaryColor),
          ),
        ],
      ),
    );
  }

  Widget nearbyPlacesWidget(int qtdItens) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: qtdItens,
      itemBuilder: (BuildContext context, int index) => ListTile(
        leading: Stack(
          children: [
            VerticalDivider(
              thickness: Utils().mediaQuery(context, 0.007),
              color: Colors.grey[200],
            ),
            Positioned(
              left: 5,
              top: 25,
              child: Container(
                height: Utils().mediaQuery(context, 0.015),
                width: Utils().mediaQuery(context, 0.015),
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
        title: AutoSizeText('data'),
        subtitle: AutoSizeText('data'),
        trailing: AutoSizeText('data'),
      ),
    );
  }
}
