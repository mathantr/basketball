import 'package:basketball/colors/const.dart';

import 'package:flutter/material.dart';

class CustomTabBarMenu extends StatefulWidget {
  @override
  _CustomTabBarMenuState createState() => _CustomTabBarMenuState();
}

class _CustomTabBarMenuState extends State<CustomTabBarMenu>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          //This is responsible for the background of the tabbar, does the magic
          decoration: BoxDecoration(
              //This is for background color
              color: Colors.white.withOpacity(0.0),
              //This is for bottom border that is needed
              border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
          child:
              TabBar(controller: _controller, indicatorColor: liteGreen, tabs: [
            Tab(
              text: 'My Picks',
            ),
            Tab(text: 'Statistics'),
            Tab(text: 'Wallet'),
          ])),
      SizedBox(
        height: 5,
      ),
      Container(
          height: 5,
          child: new TabBarView(
            controller: _controller,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(''),
                ),
              ),
              Container(
                child: Center(
                  child: Text(''),
                ),
              ),
              Container(
                child: Center(
                  child: Text(''),
                ),
              ),
            ],
          ))
    ]);
  }
}
