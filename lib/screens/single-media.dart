import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:movies/screens/home_screen.dart';
import 'package:movies/styles/constants.dart';

import 'package:movies/models/media.dart';

class SingleMediaScreen extends StatefulWidget {
  final Media _movie;

  const SingleMediaScreen(this._movie, {Key? key}) : super(key: key);

  @override
  _SingleMediaScreenState createState() => _SingleMediaScreenState();
}

class _SingleMediaScreenState extends State<SingleMediaScreen> {
  late DateFormat dateFormat;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    dateFormat = DateFormat.yMMMMd('fr');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.network(
              "https://image.tmdb.org/t/p/w500/${widget._movie.backdropPath}",
              width:  MediaQuery.of(context).size.width,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalSpace, vertical: kVerticalSpacer),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.pop(context);
                        print('POP');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: kBorderRadiusItem,
                          boxShadow: kBoxShadowItem,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            Icons.close,
                            color: kMainTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: kHorizontalSpace, vertical: kVerticalSpacer),
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w154/${widget._movie.posterPath}",
                      height: 231,
                      width: 154,
                    ),
                  ),
                  Text(
                    widget._movie.title,
                    style: kLargeTitleStyle,
                  ),
                  Text(
                    'Description',
                    style: kTitleSection,
                  ),
                  Text(widget._movie.overview),
                  Text(
                    'Date de sortie',
                    style: kSubtitleStyle,
                  ),
                  Text(
                    dateFormat.format(widget._movie.releaseDate),
                    style: kCardSubtitleStyle.apply(color: kMainTextColor),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
