import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerFoodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.lightBlue[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: AutoSizeText(
              "Com a Ticket® todo mundo sai ganhando!",
              presetFontSizes: [14.0, 12.0],
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            'images/food.png',
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 0.25,
          ),
        ],
      ),
    );
  }
}
