import 'package:flutter/material.dart';
import 'package:practise/calculation.dart';

class Shamol extends StatefulWidget {

  String num1;

  Shamol(String this.num1);
  @override
  _ShamolState createState() => _ShamolState(this.num1);
}

class _ShamolState extends State<Shamol> {

  String num1;
  var size;
  _ShamolState(String this.num1);
  var currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double deviceHeight =
        MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: deviceHeight,),
            Center(child: Text(num1,style: TextStyle(color: Colors.red,fontSize: 100,fontWeight: FontWeight.w600),)),
            // StreamBuilder(
            //     builder: (context, snapshot) {
            //       size = int.parse(this.total);
            //       for (var i=0; i<size.bitLength; i++){
            //         Column(
            //           children: [
            //             Text(this.num1)
            //           ],
            //         );
            //       }
            //     }),
            SizedBox(height: deviceHeight,),
            FlatButton(
              color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cal()));
                },
                child: Text('Home Page',style: TextStyle(color: Colors.white),))
            //Text(this.num2)
          ],
        ),
      ),
    );
  }
  Widget listOfWidgets(List<String> total) {
    List<Widget> list = List<Widget>();
    for (var i = 0; i < total.length; i++) {
      list.add(Container(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              total[i],
            ),
          )));
    }
    return Wrap(
        spacing: 5.0, // gap between adjacent chips
        runSpacing: 2.0, // gap between lines
        children: list);
  }
}
