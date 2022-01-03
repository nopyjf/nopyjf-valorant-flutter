import 'package:flutter/material.dart';

import 'core/my_core.dart';
import 'detail/detail.dart';
import 'landing/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: MyRoute.landing,
      routes: {
        MyRoute.landing: (context) => const LandingPage(),
        MyRoute.detail: (context) => const DetailPage(),
      },
    );
  }
}
