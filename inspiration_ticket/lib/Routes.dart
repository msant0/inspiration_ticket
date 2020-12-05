import 'package:flutter/material.dart';
import 'package:inspiration_ticket/shared/routers/fade-router.transaction.dart';
import 'package:inspiration_ticket/splash.page.dart';
import 'package:inspiration_ticket/view/material-app.dart';
import 'package:provider/provider.dart';

class Routes {
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
        home: MyMaterialApp(
          new SplashPage(),
          routes,
        ),
        debugShowCheckedModeBanner: false,
      ),
      // MultiProvider(
      //   providers: [
      //     // Provider
      //   ],
      //   child: MyMaterialApp(),
      // ),
    );
  }
}
