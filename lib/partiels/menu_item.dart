import 'package:flutter/material.dart';
import 'package:movies/models/data_item.dart';
import '../styles/constants.dart';

class MenuItem extends StatelessWidget {

  final MenuItemData _menuItemData;

  const MenuItem(this._menuItemData, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: _menuItemData.gradient,
                  borderRadius: BorderRadius.all(Radius.circular(11))),
              child: IconButton(
                icon: _menuItemData.icon,
                color: Colors.white,
                onPressed: () {
                  print(_menuItemData.name);
                },
              ),
            ),
            const SizedBox(
              width: verticalSpace*0.8,
            ),
            Text( _menuItemData.name, style: fontStyleMenuItems),
          ],
        ),
        SizedBox(
          height: verticalSpace*0.8,
        )
      ],
    );
  }
}
