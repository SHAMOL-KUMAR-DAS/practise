// import 'package:flutter/material.dart';
// import 'dart:async';
//
// import 'package:flutter/services.dart';
// import 'package:flutter_share/flutter_share.dart';
// import 'package:documents_picker/documents_picker.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   Future<void> share() async {
//     await FlutterShare.share(
//         title: 'Example share',
//         text: 'Example share text',
//         linkUrl: 'https://flutter.dev/',
//         chooserTitle: 'Example Chooser Title'
//     );
//   }
//
//   Future<void> shareFile() async {
//     List<dynamic> docs = await DocumentsPicker.pickDocuments;
//     if (docs == null || docs.isEmpty) return null;
//
//     await FlutterShare.shareFile(
//       title: 'Example share',
//       text: 'Example share text',
//       filePath: docs[0] as String,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               FlatButton(
//                 child: Text('Share text and link'),
//                 onPressed: share,
//               ),
//               FlatButton(
//                 child: Text('Share local file'),
//                 onPressed: shareFile,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:documents_picker/documents_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:practise/Config/config_button.dart';

class ShareData extends StatefulWidget {
  @override
  _ShareDataState createState() => _ShareDataState();
}

class _ShareDataState extends State<ShareData> {

    Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title'
    );
  }

  Future<void> shareFile() async {
    List<dynamic> docs = await DocumentsPicker.pickDocuments;
    if (docs == null || docs.isEmpty) return null;

    await FlutterShare.shareFile(
      title: 'Example share',
      text: 'Example share text',
      filePath: docs[0] as String,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              FlatButton(
                child: Text('Share text and link'),
                onPressed: share,
              ),
              FlatButton(
                child: Text('Share local file'),
                onPressed: shareFile,
              ),
              Text('Bangladesh is a melting pot of ancient people they came by land routes across mountain and also possible by boats'),
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(
                  counter: Offstage(),
                  contentPadding: EdgeInsets.only(left: 25, right: 25),
                  hintText: 'Please Enter Your Name',
                  labelText: '01*********',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),

                ),
              ),
              ButtonConfig(
                text: 'Pressed',
                press: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      );
  }
}