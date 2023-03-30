import 'package:basketball/colors/const.dart';
import 'package:basketball/widgets/home/appbar.dart';
import 'package:basketball/widgets/home/free_card.dart';
import 'package:basketball/widgets/home/uefa.dart';
import 'package:basketball/widgets/home/upcoming.dart';
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
          child: SingleChildScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Appbar(),
                      SizedBox(
                        height: 7,
                      ),
                      FreeCard(),
                      SizedBox(
                        height: 20,
                      ),
                      UpComing(),
                      SizedBox(
                        height: 25,
                      ),
                      Uefa(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
