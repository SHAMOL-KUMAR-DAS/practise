
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:practise/API_LOGIN/design.dart';
import 'package:practise/API_LOGIN/fail.dart';
import 'dart:convert';
import 'dart:async';

import 'package:practise/API_LOGIN/model.dart';
import 'package:practise/API_LOGIN/success.dart';
import 'package:shared_preferences/shared_preferences.dart';

var _baseUrl = 'https://doctorbari24.restaurantsoftbd.com';

Future<dynamic> ApiLogin(BuildContext context, String _mobile, _pin)async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  //var _token = (preferences.setString('token') ?? '');

  var url = '${_baseUrl}/api/login';
  print('mobile: $_mobile');
  print('pin: $_pin');

  var response = await http.post(Uri.parse(url), body: {
    'mobile': _mobile,
    'pin': _pin
  });
  if (response.statusCode == 200) {
    LoginModel loginModel = loginModelFromMap(response.body);
    //return LoginModel.fromMap(jsonDecode(response.body));

    preferences.setString('token', loginModel.accessToken);
    preferences.setString('tokenType', loginModel.tokenType);
    preferences.setString('expiresIn', loginModel.expiresIn.toString());
    //return loginModel;
    return Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessPage()));

  } else {
    // return       Fluttertoast.showToast(
    //     msg:
    //     "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    //     toastLength: Toast.LENGTH_LONG,
    //     gravity: ToastGravity.BOTTOM,
    //     backgroundColor: Colors.black,
    //     textColor: Colors.red,
    //     fontSize: 16.0);
    throw Exception(
      // Fluttertoast.showToast(
      //     msg: 'Please Enter Correct E-Mail or Password',
      //   toastLength: Toast.LENGTH_SHORT
      // )
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Please Enter Correct E-Mail/Password'),
        );
      })
    );
  }
}
