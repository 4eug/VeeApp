import 'package:flutter/material.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Vee",
        style: TextStyle(color: Colors.red),
      ),
      Text(
        "App",
        style: TextStyle(color: Colors.black87),
      ),
    ],
  );
}
