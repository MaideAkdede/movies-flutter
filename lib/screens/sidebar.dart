import 'package:flutter/material.dart';
import 'package:movies/partiels/avatar.dart';
import 'package:movies/styles/constants.dart';
import 'package:movies/models/data_item.dart';
import 'package:movies/models/data_item.dart';
import 'package:movies/partiels/menu_item.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(52),
          bottomRight: Radius.circular(52),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.75,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 34),
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Avatar(),
                      SizedBox(
                        width: verticalSpace*0.8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Corki'),
                          Text(
                            'Junior Dog',
                            style: fontStyleLegend,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: verticalSpace*2,
                  )
                ],
              ),
              MenuItem(menuItemsData[0]),
              MenuItem(menuItemsData[1]),
              MenuItem(menuItemsData[2]),
              Spacer(),
              Row(
                children: const [
                  Icon(Icons.logout, color: Colors.grey),
                  SizedBox(width: 5),
                  Text('Se déconnecter', style: fontStyleLegend),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
