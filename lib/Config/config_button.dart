// import 'package:flutter/material.dart';
//
// class ButtonConfig extends StatefulWidget {
//
//   var text, press;
//   ButtonConfig({this.text, this.press});
//
//   @override
//   _ButtonConfigState createState() => _ButtonConfigState();
// }
//
// class _ButtonConfigState extends State<ButtonConfig> {
//   @override
//   Widget build(BuildContext context) {
//     return FlatButton(
//       color: Colors.red,
//         onPressed: widget.press,
//         child: Text(widget.text)
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:practise/Config/config_color.dart';

class ButtonConfig extends StatelessWidget {

  var text, press;
  ButtonConfig({this.text, this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      minWidth: size.width,
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onPressed: press,
        child: Text(text,style: buttonStyle,)
    );
  }
}
