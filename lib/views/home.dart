import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
      children: <Widget>[
        Container(
          height: 125.0,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          color: Colors.black),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {},
                      )),
                  SizedBox(height: 7.0),
                  Text('Your story',
                      style: TextStyle(
                          fontFamily: 'Objectivity',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600))
                ],
              ),
              SizedBox(width: 25.0),
              listItem('images/anna.jpg', 'Anna', true),
              SizedBox(width: 25.0),
              listItem('images/benard.jpg', 'Benard', false),
              SizedBox(width: 25.0),
              listItem('images/kathie.jpg', 'Kathie', false),
              SizedBox(width: 25.0),
              listItem('images/raud.jpg', 'Raud', false),
            ],
          ),
        ),
        SizedBox(height: 1.0),
        firstStyleRow(
            'images/picture4.jpg', 'images/picture3.jpg', 'images/bettie.jpg'),
        SizedBox(height: 1.0),
        infoRow(),
        SizedBox(height: 1.0),
        firstStyleRow(
            'images/picture1.jpg', 'images/picture5.jpg', 'images/bettie.jpg'),
        SizedBox(height: 1.0),
        infoRow2(),
      ],
    ));
  }

  Widget infoRow() {
    return Padding(
        padding: EdgeInsets.only(left: 1.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: (MediaQuery.of(context).size.width - 200.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(height: 5.0),
                        Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage('images/vicent.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Vicent',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontSize: 18.0,
                                  color: Colors.black),
                            ),
                            Text(
                              'Today',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontSize: 10.0,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])),
            SizedBox(width: 10.0),
            Container(
                width: (MediaQuery.of(context).size.width - 200.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(height: 5.0),
                        Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage('images/mona.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Mona',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontSize: 18.0,
                                  color: Colors.black),
                            ),
                            Text(
                              'Today',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontSize: 10.0,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])),
          ],
        ));
  }

  Widget infoRow2() {
    return Padding(
        padding: EdgeInsets.only(left: 1.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: (MediaQuery.of(context).size.width - 200.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(height: 5.0),
                        Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage('images/bettie.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Bettie',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontSize: 18.0,
                                  color: Colors.black),
                            ),
                            Text(
                              'Yesterday',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontSize: 10.0,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])),
            SizedBox(width: 10.0),
            Container(
                width: (MediaQuery.of(context).size.width - 200.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(height: 5.0),
                        Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage('images/jenna.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Jenna',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontSize: 18.0,
                                  color: Colors.black),
                            ),
                            Text(
                              'Yesterday',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Objectivity',
                                  fontSize: 10.0,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])),
          ],
        ));
  }

  Widget firstStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
      height: 250.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 35.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath1), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: AssetImage(imgPath2), fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listItem(String imgPath, String name, bool available) {
    return Column(
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover)),
        ),
        SizedBox(height: 7.0),
        Row(
          children: <Widget>[
            Text(name,
                style: TextStyle(
                    fontFamily: 'Objectivity',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600)),
          ],
        )
      ],
    );
  }
}

Widget menu(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          SizedBox(height: 10),
          Text(
            "Messages",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          SizedBox(height: 10),
          Text(
            "Notifications",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          SizedBox(height: 10),
          Text(
            "Settings",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          )
        ],
      ),
    ),
  );
}
