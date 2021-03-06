import 'package:flutter/material.dart';
import 'package:vee_app/views/menu_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuDrawer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
