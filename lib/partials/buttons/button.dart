import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class Button extends StatelessWidget {
  final String _label;

  const Button(this._label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: kVerticalSpacer),
            child: ElevatedButton(
              onPressed: () {
                print('Gesture Tap');
              },
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: kBorderRadiusItem,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  _label,
                  style: kTitleSection.apply(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
