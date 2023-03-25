import 'dart:ui';

import 'package:basketball/colors/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
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
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height * 0.27,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: blue,
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset('assets/images/players.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
