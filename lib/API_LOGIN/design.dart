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

  //SharedPreferences prefs = SharedPreferences.getInstance();
  Future readAndSet() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var _token = preferences.getString('token');
    print('Tokens: $_token');

    if(_token == '0'){
      print('Not Valid');
    }
    else{
      print('Valid');
    }
  }

  @override
  void initState(){
    readAndSet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Login'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: TextFormField(
              controller: mobile,
              decoration: InputDecoration(
                hintText: 'Please Enter Phone'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: TextFormField(
              controller: pin,
              decoration: InputDecoration(
                hintText: 'Please Enter PIN'
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          FlatButton(
            color: Colors.teal,
              onPressed: (){
                ApiLogin(context,mobile.text, pin.text);

                mobile.text = '';
                pin.text = '';
                //readAndSet();
                if(widget.token == 0){
                  print('Not Valid');
                }
                else{
                  print('Valid');
                }
              },
              child: Text('Login',style: TextStyle(
                color: Colors.white
              ),))
        ],
      ),
    );
  }
}
