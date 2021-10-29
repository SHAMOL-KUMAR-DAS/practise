import 'package:flutter/material.dart';
import 'package:practise/AtoZSorting/alphabet_scroll_page.dart';
import 'package:practise/CarouselSlider/carousel_slider.dart';
import 'package:practise/Provider/design_image.dart';
import 'package:practise/Sign_In/sign_in.dart';
import 'package:practise/TabBar_And_TabBarView/tabbar.dart';
import 'package:practise/api.dart';
import 'package:practise/bottomNavigation.dart';
import 'package:practise/calculation.dart';
import 'package:practise/design.dart';
import 'package:practise/get_data.dart';
import 'package:practise/one.dart';
import 'package:practise/JsonParseDemo.dart';

import 'package:practise/cal.dart';
import 'package:practise/post_data.dart';
import 'package:provider/provider.dart';


import 'API/get_data.dart';
import 'Provider/Get_Image.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>Get_Image(),),
    ],
      child: MyApp()));
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
      //home: Add_Data(),
      //home: Design_Image(),
      //home: Sign_In(),
      //home: AlphabetScrollPage(),
      //home: TabExample(),
      //home: Carousel(),
      home: GetData(),
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