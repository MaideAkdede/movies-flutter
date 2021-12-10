import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        boxShadow: kBoxShadowItem,
      ),
      child: Image(
        image: AssetImage('assets/img/profile.jpg'),
        width: kDefaultWidth,
        height: kDefaultWidth,
      ),
    );
  }
}
