import 'package:movies/screens/login_screen.dart';
import 'package:movies/screens/single-media.dart';
import 'package:movies/styles/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        cupertinoOverrideTheme: const CupertinoThemeData(
          primaryColor: kMainTextColor,
        ),
        textSelectionTheme:
        const TextSelectionThemeData(cursorColor: kMainTextColor),
        primaryColor: kMainTextColor,
      ),
      home: const Scaffold(
        backgroundColor: kMainBackgroundColor,
        body: HomeScreen(),
      ),
    );
  }
}