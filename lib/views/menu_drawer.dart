import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:vee_app/widget/widget.dart';

import 'home.dart';

class MenuDrawer extends StatefulWidget {
  MenuDrawer({Key key}) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 150))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        backgroundColor: Color(0xff343442),
        controller: _controller,
        drawerItems: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            children: [
              Container(
                  width: 98.0,
                  height: 98.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "images/anna.jpg",
                        ),
                      ))),
            ],
          ),
          Text(
            'Yadira Pep',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0.01),
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0.01),
            leading: Icon(
              Icons.message,
              color: Colors.white,
            ),
            title: Text(
              "Messages",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0.01),
            leading: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0.01),
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          ListTile(
            contentPadding: EdgeInsets.all(0.01),
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              "Sign Out",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        child: Scaffold(
            appBar: AppBar(
              elevation: 4.0,
              title: brandName(),
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  _controller.toggle();
                },
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black,
                    iconSize: 20.0,
                    onPressed: () {}),
              ],
            ),
            body: HomePage()),
      ),
    );
  }
}
