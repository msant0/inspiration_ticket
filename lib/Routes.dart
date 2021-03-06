import 'package:flutter/material.dart';
import 'package:inspiration_ticket/shared/routers/fade-router.transaction.dart';
import 'package:inspiration_ticket/splash.page.dart';
import 'package:inspiration_ticket/view/material-app.dart';

class Routes {
  // ignore: top_level_function_literal_block
  // ignore: missing_return
  var routes = (RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return FadeRoute(page: SplashPage());
        break;
      case '/home':
        break;
      case '/preLogin':
        break;
    }
  };

  Routes() {
    runApp(
      MaterialApp(
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.dark,
        home: MyMaterialApp(
          new SplashPage(),
          routes,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
