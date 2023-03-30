// ignore_for_file: must_be_immutable

import 'package:basketball/colors/const.dart';
import 'package:basketball/screens/team.dart';
import 'package:flutter/material.dart';

class UefaChampian extends StatelessWidget {
  List<Color> _colorItem = [liteGreen, Color.fromRGBO(232, 127, 126, 1)];

  var _text = [
    '10.20 Units',
    '-8.56 Units',
  ];
  var _win = [
    'Win',
    'Loose',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 15,
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (() {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Team(),
            ));
          }),
          child: Container(
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lightBlack,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'UEFA Champions League',
                        style: TextStyle(
                          fontSize: 16,
                          color: white,
                        ),
                      ),
                      Text(
                        '02/11/22',
                        style: TextStyle(
                          fontSize: 16,
                          color: white.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pick type: Spread',
                        style: TextStyle(
                          fontSize: 14,
                          color: white.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Manchester City',
                        style: TextStyle(
                            fontSize: 12, color: white.withOpacity(0.6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _colorItem[index]),
                        child: Center(
                            child: Text(
                          _win[index],
                          style: TextStyle(fontSize: 16, color: black),
                        )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Profit:',
                        style: TextStyle(
                          color: white.withOpacity(0.7),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        _text[index],
                        style: TextStyle(
                          color: _colorItem[index],
                          fontSize: 14,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
