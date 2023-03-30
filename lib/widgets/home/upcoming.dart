// ignore_for_file: must_be_immutable

import 'package:basketball/colors/const.dart';

import 'package:flutter/material.dart';

class UpComing extends StatelessWidget {
  List<Color> _colors = [
    liteGreen,
    lightBlack,
    lightBlack,
    lightBlack,
    lightBlack,
    lightBlack,
  ];
  List<Color> _IconColor = [
    blue,
    liteGreen,
    liteGreen,
    liteGreen,
    liteGreen,
    liteGreen,
  ];
  List<String> items = [
    'https://cdn-icons-png.flaticon.com/512/5110/5110754.png',
    'https://cdn-icons-png.flaticon.com/512/184/184940.png',
    'https://cdn-icons-png.flaticon.com/512/4074/4074317.png',
    'https://cdn-icons-png.flaticon.com/512/8829/8829012.png',
    'https://cdn-icons-png.flaticon.com/512/8829/8829012.png',
    'https://cdn-icons-png.flaticon.com/512/8829/8829012.png',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upcoming events',
          style: TextStyle(
            fontSize: 25,
            color: white,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Column(
          children: [
            Container(
              height: size.height * 0.09,
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (context, index) => SizedBox(
                  width: 15,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Align(
                        child: Container(
                          height: size.height * 0.09,
                          width: size.width * 0.18,
                          decoration: BoxDecoration(
                              color: _colors[index],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Positioned(
                          top: size.height * 0.012,
                          left: size.width * 0.03,
                          child: Stack(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.network(
                                  items[index],
                                  color: _IconColor[index],
                                ),
                              ),
                            ],
                          ))
                    ],
                  );
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
