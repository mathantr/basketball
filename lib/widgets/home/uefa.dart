import 'package:basketball/colors/const.dart';
import 'package:flutter/material.dart';

class Uefa extends StatelessWidget {
  const Uefa({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'UEFA Nations League',
              style: TextStyle(
                color: white,
                fontSize: 16,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'See All',
                style: TextStyle(color: liteGreen, fontSize: 16),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 400,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: lightBlack),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1/2 finals',
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Gibraltar vs Cyprus',
                              style: TextStyle(color: white, fontSize: 16),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Mar 21, 2023',
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                            color: white.withOpacity(0.4),
                            width: 2,
                          ))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2.40',
                                      style:
                                          TextStyle(color: white, fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/197/197430.png',
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Opacity(
                                opacity: 0.4,
                                child: Divider(
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '1.70',
                                    style:
                                        TextStyle(color: white, fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/197/197374.png',
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.scaleDown,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
