import 'package:flutter/material.dart';
import '../constants.dart';

class MenuItem extends StatelessWidget {

  final String _name;
  final Icon _icon;
  final LinearGradient _gradient;

  const MenuItem(this._name, this._icon, this._gradient, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: _gradient,
              borderRadius: BorderRadius.all(Radius.circular(11))),
          child: IconButton(
            icon: _icon,
            color: Colors.white,
            onPressed: () {
              print(_name);
            },
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text( _name, style: fontStyleMenuItems),
      ],
    );
  }
}
