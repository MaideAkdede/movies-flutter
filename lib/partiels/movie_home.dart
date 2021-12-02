import 'package:flutter/material.dart';
import 'package:movies/models/data_movie.dart';
import '../styles/constants.dart';

class MovieHome extends StatelessWidget {

  final MovieData _movieData;

  const MovieHome(this._movieData, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              boxShadow: boxShadowItem,
              borderRadius: borderRadiusItem,
            ),
            child: _movieData.image,),
          Text(_movieData.title),
          Text(_movieData.date),
        ],
      ),
    );
  }
}
