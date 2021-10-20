import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TabExample extends StatefulWidget {
  @override
  _TabExampleState createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample> {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: Color(0xFFffffff),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              //backgroundColor: Color(0xFFffffff),
              backgroundColor: Colors.red,
              //centerTitle: true,
              elevation: 0,
              // title: Text(
              //   'smartsoftware.com',
              //   style: TextStyle(color: Color(0xFF21afae)),
              // ),
              actions: [
                IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                      Icons.notifications,
                      color: Color(0xFF86878b),
                    )),
                IconButton(
                  onPressed: (){
                  },
                    icon: Icon(Icons.local_offer, color: Color(0xFF86878b))),
                IconButton(
                  onPressed: (){
                  },
                    icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF86878b),
                ))
              ],
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    Text('shamol')
                  ],
                ),
              )
            ),
          ),

          body: TabBarView(
            controller: controller,
            children: [
              Text('Home_Page'),
              Text('Orders'),
              Text('AllMedicine'),
              Text('Account'),
              // GestureDetector(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Signing()));
              //   },
              // )
            ],
          ),
          bottomNavigationBar: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            color: Color(0xFFffffff),
            child: TabBar(
              controller: controller,
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.home_filled,
                    ),
                    text: 'Home'),
                Tab(
                  icon: Icon(Icons.card_giftcard),
                  text: 'Orders',
                ),
                Tab(
                  icon: Icon(Icons.all_inbox_outlined),
                  text: 'All Medicines',
                ),
                Tab(
                  icon: Icon(Icons.account_circle_sharp),
                  text: 'Account',
                ),
              ],
              labelColor: Color(0xFF4fd154),
              //labelColor: Color(0xFF84888b),
              labelStyle: TextStyle(fontSize: 10),
              indicatorColor: Colors.white,
              unselectedLabelColor: Color(0xFF84888b),
              //automaticIndicatorColorAdjustment: true,
            ),
          ),

        ),
      ),
    );
  }
}
