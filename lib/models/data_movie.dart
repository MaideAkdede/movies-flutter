import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class MovieData {
  final Image _image;
  final String _title;
  final String _date;

  MovieData(this._image, this._title, this._date);

  Image get image => _image;
  String get title => _title;
  String get date => _date;
}

List<MovieData> moviesData = [
  MovieData(
    const Image(
      image: AssetImage('assets/img/affiche1.jpeg'),
      width: 150,
    ),
    "Jumanji",
    "4 décembre 2020"
  ),
  MovieData(
    const Image(
      image: AssetImage('assets/img/affiche2.jpg'),
      width: 150,
    ),
    "Rebelle",
    "4 décembre 2020"
  ),

];
