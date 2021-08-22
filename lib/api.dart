import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class API_Call extends StatefulWidget {
  @override
  _API_CallState createState() => _API_CallState();
}

class _API_CallState extends State<API_Call> {

  List Data;
  Future<bool> _getData() async{
    String Url = 'https://api.sakkhar.com/api/login';
    var response = await http.get(Url);
    setState(() {
      Data = json.decode(response.body.toString());
    });
    return true;
  }
  @override
  void initState(){
    super.initState();
    this._getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Data == null? 0:Data.length,
          //null == _users ? 0 : _users.length
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text('Brand: '+Data[index]['name']),
              //Text('Brand: '+Data[index]['product_brand']),
              subtitle: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Brand: '+Data[index]['email']),
                  // Text('Name: '+Data[index]['product_name']),
                  // Text('Quantity: '+Data[index]['quantity']),
                  // Text('Created At: '+Data[index]['created_at'])
                ],
              ),
            );
          }),
    );
  }
}
