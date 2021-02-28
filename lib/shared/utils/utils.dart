import 'package:flutter/cupertino.dart';

class Utils {
  mediaQuery(BuildContext context, multiplier) {
    return MediaQuery.of(context).size.width * multiplier;
  }
}
