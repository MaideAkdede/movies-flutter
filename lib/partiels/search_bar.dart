import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: boxShadowItem,
            borderRadius: borderRadiusItem,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.search),
                Expanded(
                  child: Text('Rechercher...'),
                ),
                Icon(Icons.mic),
              ],
            ),
          ),
        ),
      ),
    );
  }
}