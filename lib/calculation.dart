import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise/cal.dart';

class Cal extends StatefulWidget {
  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {

  final TextEditingController x = TextEditingController();
  final TextEditingController n = TextEditingController();
  final TextEditingController m = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // FlatButton(
                //     onPressed: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Shamol(count.toString())));
                // },
                //     child: Text('Next')),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: n,
                    decoration: InputDecoration(
                      labelText: "Number 1",
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: m,
                    decoration: InputDecoration(
                      labelText: "Number 2",
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                FlatButton(
                  onPressed: (){
                    fiboNacci();
                    //digitCount();
                    },
                    color: Color(0xFFd4d0b8),
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("Calculate")),
              ],
            ),
            //),
          ),

        ),
      ),
    );
  }
  // Future digitCount(){
  //   var a = double.parse(n.text);
  //   var b = double.parse(m.text);
  //   var mul = pow(a, b);
  //   var temp = mul,count = 0;
  //   while(temp>0) {
  //     var rem = temp % 10;
  //     temp = temp ~/ 10;
  //     count ++;
  //     var res = count;
  //   }
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Shamol(count.toString())));
  // }

Future fiboNacci(){
    var a = double.parse(n.text);
    var count = 0;
    var fibo, f = 0, s = 1;
    print(a);
    while(a>count){
      if(count<=1){
        fibo = count;
      }
      else{
        fibo = f+s;
        f = s;
        s = fibo;
      }
      var res = fibo;
      count++;
      print(fibo);
    }
    var total = count;
    print(total);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Shamol(fibo.toString())));
}
}
