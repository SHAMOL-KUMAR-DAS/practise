import 'package:flutter/material.dart';

class BottomNabigation extends StatefulWidget {
  @override
  _BottomNabigationState createState() => _BottomNabigationState();
}

class _BottomNabigationState extends State<BottomNabigation> {

  var _currentIndex = 0;
  // final pages= [
  //   ImageTake()
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: _currentIndex,
          items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.cyanAccent,
            icon:Icon(Icons.message),
        title: Text("Message")),
        BottomNavigationBarItem(
          backgroundColor: Colors.cyanAccent,
          icon: Icon(Icons.call),
          title: Text("Call")
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.cyanAccent,
            icon: Icon(Icons.pan_tool),
          title: Text("Pan Tool")
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.cyanAccent,
            icon: Icon(Icons.radio),
          title: Text("Radio")
        )
      ],
      onTap: (index){
          setState(() {
            _currentIndex = index;
          });
      },
      ),
    );
  }
}
