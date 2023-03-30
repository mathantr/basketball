import 'package:flutter/material.dart';

import '../../colors/const.dart';

class FreeCard extends StatelessWidget {
  const FreeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.28,
      width: size.width * 0.9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: size.height * 0.24,
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -5,
                left: -22,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/player.png',
                    height: size.height * 0.24,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                  top: 50,
                  left: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free bets of \$30',
                        style: TextStyle(fontSize: 20, color: white),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Get Free bets on basketball',
                        style: TextStyle(
                          fontSize: 12,
                          color: white.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'betting until January 20th',
                        style: TextStyle(
                          fontSize: 12,
                          color: white.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'More Details',
                          style: TextStyle(
                              color: blue,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          );
        },
      ),
    );
  }
}
