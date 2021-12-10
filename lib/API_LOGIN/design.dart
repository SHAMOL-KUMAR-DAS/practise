import 'package:flutter/material.dart';
import 'package:practise/API_LOGIN/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DesignPage extends StatefulWidget {

  var token;
  DesignPage(this.token);
  @override
  _DesignPageState createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {

  var mobile = TextEditingController();
  var pin = TextEditingController();

  Future getValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var _token = prefs.getString('token' ?? 'Fail');
    var _tokenType = prefs.getString('tokenType' ?? 'Fail');
    var _expiresIn = prefs.getString('expiresIn' ?? 0);

    print('Token: $_token');
    print('Token Type: $_tokenType');
    print('Expires In: $_expiresIn');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Login'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 50, right: 50, top: 20),
        child: Column(
          children: [

            TextFormField(
              controller: mobile,
              maxLength: 11,
              decoration: InputDecoration(
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.teal,
                //     width: 3
                //   )
                // ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                    width: 3
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.teal,
                    width: 3
                  )
                ),
                counter: Offstage(),
                hintText: 'Please Enter Phone'
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 100),
              child: TextFormField(
                controller: pin,
                maxLength: 4,
                decoration: InputDecoration(
                  counter: Offstage(),
                  hintText: 'Please Enter PIN'
                ),
              ),
            ),

            FlatButton(
              color: Colors.teal,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                onPressed: ()async{
                  ApiLogin(context,mobile.text, pin.text);
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  var _token = prefs.getString('token' ?? 'Fail');
                  var _tokenType = prefs.getString('tokenType' ?? 'Fail');
                  var _expiresIn = prefs.getString('expiresIn' ?? 0);

                  print('Token Type********: $_tokenType');
                  print('Expires In********: $_expiresIn');
                },
                child: Text('Login',style: TextStyle(
                  color: Colors.white
                ),))
          ],
        ),
      ),
    );
  }
}