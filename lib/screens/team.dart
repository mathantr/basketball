import 'package:basketball/bottom_navigator/table_tab_bar.dart';
import 'package:basketball/colors/const.dart';
import 'package:basketball/widgets/profile/table_group1.dart';
import 'package:basketball/widgets/profile/table_group2.dart';
import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: lightBlack,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ClipOval(
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/2423/2423786.png',
                          color: white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UEFA Champions League',
                            style: TextStyle(fontSize: 16, color: white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Club International',
                            style: TextStyle(
                                fontSize: 14, color: white.withOpacity(0.7)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 78,
                child: TableTabBar(),
              ),
              TableGroupA(),
              SizedBox(
                height: 10,
              ),
              TableGroupB(),
            ],
          ),
        ),
      ),
    );
  }
}
