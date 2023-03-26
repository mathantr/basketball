import 'package:basketball/colors/const.dart';

import 'package:flutter/material.dart';

class UpComing extends StatelessWidget {
  List<Color> _colors = [
    white,
    lightBlack,
    lightBlack,
    lightBlack,
  ];
  List<String> items = [
    'https://cdn-icons-png.flaticon.com/512/7798/7798940.png',
    'https://cdn-icons-png.flaticon.com/512/184/184940.png',
    'https://cdn-icons-png.flaticon.com/512/4074/4074317.png',
    'https://cdn-icons-png.flaticon.com/512/4074/4074317.png'
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
          height: 10,
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
                          width: size.width * 0.16,
                          decoration: BoxDecoration(
                              color: _colors[index],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Positioned(
                          top: 5,
                          left: 10,
                          child: Stack(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.network(
                                  items[index],
                                  color: liteGreen,
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
