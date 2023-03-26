import 'package:flutter/material.dart';

import '../../colors/const.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
              text: 'Bet',
              style: TextStyle(
                color: white,
                fontSize: 35,
                fontFamily: 'PT Sans Caption',
              ),
              children: [
                TextSpan(
                    text: 'Pro',
                    style: TextStyle(
                      color: liteGreen,
                      fontSize: 35,
                      fontFamily: 'PT Sans Caption',
                    ))
              ]),
        ),
        IconButton(
          icon: new Image.asset(
            'assets/images/search.png',
            color: white,
          ),
          tooltip: 'Closes application',
          onPressed: () {},
        ),
      ],
    );
  }
}
