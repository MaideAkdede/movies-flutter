import 'package:flutter/material.dart';

const mainBackgroundColor = Color(0xFFe6e9ee);
const fontStyleMenuItems = TextStyle(
  fontFamily: "mainFont",
  fontWeight: FontWeight.w700,
  fontSize: 18,
);

const fontStyleMainTitle = TextStyle(
  fontFamily: "mainFont",
  fontWeight: FontWeight.w700,
  fontSize: 22,
  color: Color(0xFF234E60),
);
const fontStyleSecondTitle = TextStyle(
  fontFamily: "mainFont",
  fontSize: 18,
  color: Color(0xFF234E60),
);
const fontStyleMovieTitle = TextStyle(
  fontFamily: "mainFont",
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Color(0xFF234E60),
);

const double horizontalSpace = 16;
const double verticalSpace = 26;
const double defaultWidth = 42;

const BorderRadius borderRadiusItem = BorderRadius.all(Radius.circular(10));

const homeLinearGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFFFCCF31),
    Color(0xFFF55555),
  ],
);
const paymentLinearGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFF1f005c),
    Color(0xFFffb56b),
  ],
);
const settingsLinearGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFF92FFC0),
    Color(0xFF002661),
  ],
);
const fontStyleLegend = TextStyle(
  fontSize: 14,
  color: Colors.grey,
);

List<BoxShadow> boxShadowItem = [
  BoxShadow(
    color: Colors.black.withOpacity(0.16),
    spreadRadius: 2,
    blurRadius: 6,
    offset:
    const Offset(3, 3), // changes position of shadow
  ),
];
