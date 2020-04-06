import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:somewhat_app/views/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Somewhat App",
      theme: ThemeData(
        fontFamily: 'proxima',
        backgroundColor: Colors.black
      ).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: SharedAxisPageTransitionsBuilder(
              transitionType: SharedAxisTransitionType.horizontal
            ),
          }
        )
      ),
      home: HomeMainView(),
    );
  }
}