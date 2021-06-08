import 'package:fashion_app/categorypage.dart';
import 'package:fashion_app/explorer.dart';
import 'package:fashion_app/fashion.dart';
import 'package:fashion_app/hide.dart';
import 'package:fashion_app/navigtor.dart';
import 'package:fashion_app/profilepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

        ),
        home: NavigatorPage(),
    );
  }
  }