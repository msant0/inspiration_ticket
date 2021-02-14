import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvertisimentsWidget extends StatefulWidget {
  @override
  _AdvertisimentsWidgetState createState() => _AdvertisimentsWidgetState();
}

class _AdvertisimentsWidgetState extends State<AdvertisimentsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.36,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: AutoSizeText(
                              'Qual o papel do líder na pandemia?',
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              presetFontSizes: [20.0],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Icon(
                            FontAwesomeIcons.peopleArrows,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.127,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: AutoSizeText(
                            'Dê a sua opinião',
                            style: GoogleFonts.nunito(
                              color: Colors.red[800],
                              fontWeight: FontWeight.bold,
                            ),
                            presetFontSizes: [20.0],
                          ),
                        ),
                        new Icon(
                          Icons.volume_up_outlined,
                          size: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.red[800],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
