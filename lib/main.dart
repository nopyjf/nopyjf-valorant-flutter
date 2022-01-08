import 'package:flutter/material.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/detail/detail.dart';
import 'package:nopy_valorant_flutter_app/landing/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: BaseLine.appName,
      initialRoute: MyRoute.landing,
      routes: {
        MyRoute.landing: (context) => const LandingPage(),
        MyRoute.detail: (context) => const DetailPage(),
      },
    );
  }
}
