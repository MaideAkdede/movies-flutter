import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          boxShadow: boxShadowItem,
        ),
        child: const Image(
            image: AssetImage('assets/img/profile.jpg'),
            width: defaultWidth,
            height: defaultWidth),
      ),
    );
  }
}
