import 'package:flutter/material.dart';
import 'package:practise/api.dart';
import 'package:practise/bottomNavigation.dart';
import 'package:practise/calculation.dart';
import 'package:practise/design.dart';
import 'package:practise/get_data.dart';
import 'package:practise/one.dart';
import 'package:practise/JsonParseDemo.dart';

import 'package:practise/cal.dart';
import 'package:practise/post_data.dart';

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
        primarySwatch: Colors.red,
      ),
      //home: JsonParseDemo(),
      //home: Installment_Page(),
      home: Add_Data(),
      //home: LoginPage(),
      //home: API_Call(),
      //home: Design(),
      //home: Cal(),
      //home: Shamol(),
      //home: BottomNabigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}