import 'package:flutter/material.dart';

class Simple extends StatefulWidget {

  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {

  TextEditingController password = TextEditingController();
  //String password;

  Future Password(){

    if(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(password.text)){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Success'),
        );
      });
      //print('Success');
    }
    else if(!RegExp(r'^.{6,}$').hasMatch(password.text)){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Enter Your Password more than 5 Characters'),
        );
      });
      //print('Enter Your Password more than 5');
    }
    else if(!RegExp(r'^(?=.*?[A-Z])').hasMatch(password.text)){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Enter an Upper Case'),
        );
      });
      //print('Enter an Upper Case');
    }
    else if(!RegExp(r'^(?=.*?[a-z])').hasMatch(password.text)){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Enter an Lower Case'),
        );
      });
      //print('Enter an Lower Case');
    }
    else if(!RegExp(r'^(?=.*?[0-9])').hasMatch(password.text)){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Enter a Number'),
        );
      });
      //print('Enter a Number');
    }
    else if(!RegExp(r'^(?=.*?[!@#\$&*~])').hasMatch(password.text)){
      showDialog(context: context, builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter a Special Character'),
        );
      });
      //print('Enter a Special Character');
    }
    else{
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Wrong'),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Practise for own development')),
        actions: [
          Icon(Icons.ac_unit)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('SHAMOl KUMAR DAS'),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child:
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
          ),
          FlatButton(onPressed: (){
            Password();
          },
              child: Text('Click'))
        ],
      ),
    );
  }
}
