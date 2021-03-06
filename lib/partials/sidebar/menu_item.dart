import 'package:flutter/material.dart';
import 'package:movies/models/data_item.dart';
import 'package:movies/styles/constants.dart';

class MenuItem extends StatelessWidget {
  final MenuItemData _menuItemData;

  const MenuItem(this._menuItemData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: kDefaultWidth,
              height: kDefaultWidth,
              decoration: BoxDecoration(
                borderRadius: kBorderRadiusItem,
                gradient: _menuItemData.gradient,
              ),
              child: IconButton(
                icon: _menuItemData.icon,
                color: Colors.white,
                onPressed: () {
                  print(_menuItemData.name);
                },
              ),
            ),
            const SizedBox(
              width: kHorizontalSpace * 0.8,
            ),
            Text(
              _menuItemData.name,
              style: kFontStyleMenuItem,
            ),
          ],
        ),
        SizedBox(
          height: kVerticalSpacer,
        )
      ],
    );
  }
}
