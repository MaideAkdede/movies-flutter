import 'package:flutter/material.dart';
import 'package:movies/models/data_movie.dart';
import 'package:movies/styles/constants.dart';

import '../movie_home.dart';

class MovieShow extends StatefulWidget {
  const MovieShow({Key? key}) : super(key: key);

  @override
  _MovieShowState createState() => _MovieShowState();
}

class _MovieShowState extends State<MovieShow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Films populaires', style : fontStyleMainTitle),
          Text('Cette semaine', style: fontStyleSecondTitle),
          Row(
            children: [
              MovieHome(moviesData[0]),
              MovieHome(moviesData[1]),
            ],
          )
        ],
      ),
    );
  }
}
