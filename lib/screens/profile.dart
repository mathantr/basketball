import 'package:basketball/bottom_navigator/tabbar.dart';
import 'package:basketball/colors/const.dart';
import 'package:basketball/widgets/profile/uefa_champian.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: black,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/1159/1159634.png',
                            color: white,
                            height: 25,
                            width: 25,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/725/725008.png',
                              height: 25,
                              width: 25,
                              color: white,
                            )),
                      ],
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48), // Image radius
                              child: Image.network(
                                  'https://img.freepik.com/free-photo/artist-white_1368-3546.jpg?w=740&t=st=1680021848~exp=1680022448~hmac=28850cafe4a1f837dc939a9387bc95404e2ee8601f403caa36cf7c4fa18aca16',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Eduardo Simmons',
                            style: TextStyle(fontSize: 20, color: white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '@edsimmons',
                            style: TextStyle(
                                fontSize: 16, color: white.withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        height: 78,
                        width: double.infinity,
                        child: CustomTabBarMenu()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Picks',
                          style: TextStyle(fontSize: 26, color: white),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/60/60954.png',
                                      height: 30,
                                      width: 30,
                                      color: liteGreen,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Filters',
                                  style:
                                      TextStyle(color: liteGreen, fontSize: 20),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(height: 350, child: UefaChampian()),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
