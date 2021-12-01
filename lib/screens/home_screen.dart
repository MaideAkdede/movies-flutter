import 'package:flutter/material.dart';
import 'package:movies/partiels/avatar.dart';
import 'package:movies/partiels/navbar/burger_menu.dart';
import 'package:movies/partiels/search_bar.dart';
import 'package:movies/styles/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BurgerMenu(),
              SearchBar(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.notifications),
              ),
              Avatar(),
            ],
          ),
        )
      ],
    ));
  }
}
