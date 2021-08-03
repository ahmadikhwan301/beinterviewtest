import 'package:bwinterviewtest/themes/theme.dart';
import 'package:flutter/material.dart';

import 'package:bwinterviewtest/config/route.dart';
import 'package:bwinterviewtest/pages/mainPage.dart';
import 'package:bwinterviewtest/pages/productDetailPage.dart';
import 'package:bwinterviewtest/widgets/customRoute.dart';
import 'package:google_fonts/google_fonts.dart';

import 'themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.muliTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name.contains('detail')) {
          return CustomRoute<bool>(builder: (BuildContext context) => ProductDetailPage());
        } else {
          return CustomRoute<bool>(builder: (BuildContext context) => MainPage());
        }
      },
      initialRoute: "MainPage",
    );
  }
}
