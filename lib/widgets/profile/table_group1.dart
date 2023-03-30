import 'package:basketball/colors/const.dart';
import 'package:flutter/material.dart';

class TableGroupA extends StatelessWidget {
  const TableGroupA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Group A',
          style: TextStyle(
            fontSize: 18,
            color: white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(6),
              2: FlexColumnWidth(2),
              3: FlexColumnWidth(2),
            },
            children: [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '#',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Team',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Bats',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Points',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                )
              ]),
              TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(151, 233, 164, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '1',
                        style: TextStyle(color: blue, fontSize: 14),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 15.0,
                              backgroundImage: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/3665/3665982.png'),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Napoli',
                              style: TextStyle(color: blue, fontSize: 14),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '20-6',
                        style: TextStyle(color: blue, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '83.3%',
                        style: TextStyle(color: blue, fontSize: 14),
                      ),
                    ),
                  ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '2',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundImage: NetworkImage(
                              'https://png.pngtree.com/png-clipart/20191123/original/pngtree-basketball-championship-logo-modern-professional-basketball-logo-design-png-image_5199213.jpg'),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Liverpool',
                          style: TextStyle(color: white, fontSize: 14),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '17-6',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '83.3%',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '3',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/premium-vector/logo-design-basketball-sport_29937-9290.jpg?w=740'),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Ajax',
                          style: TextStyle(color: white, fontSize: 14),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '11-16',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '33.3%',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '4',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-vector/flat-design-american-football-logo-template_23-2149360430.jpg?t=st=1680110067~exp=1680110667~hmac=6107f88899bcd709c1c2800ad4d84b5763b01d3e9e905699f8e324c63044012c'),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Rangers',
                          style: TextStyle(color: white, fontSize: 14),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '2-22',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '0-0%',
                    style: TextStyle(color: white, fontSize: 14),
                  ),
                ),
              ]),
            ],
            // border: TableBorder(
            //     horizontalInside: BorderSide(
            //         width: 1,
            //         color: Colors.white,
            //         style: BorderStyle.solid)),
          ),
        ),
      ],
    );
  }
}
