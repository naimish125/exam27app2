import 'dart:js';

import 'package:exam27/first.dart';
import 'package:exam27/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        // 'new':(context) =>Sceond(),
      },
    ),
  );
}
