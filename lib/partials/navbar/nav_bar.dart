import 'package:flutter/material.dart';
import 'package:movies/partials/navbar/search_field.dart';
import 'package:movies/styles/constants.dart';

import '../avatar.dart';
import 'burger_menu.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultSpacer),
      child: Row(
        children: [
          BurgerMenu(),
          SizedBox(
            width: kDefaultSpacer,
          ),
          SearchField(),
          SizedBox(
            width: kDefaultSpacer,
          ),
          Icon(
            Icons.notifications,
            color: kMainTextColor,
          ),
          SizedBox(
            width: kDefaultSpacer,
          ),
          Avatar()
        ],
      ),
    );
  }
}
