import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';
import 'package:practise/Provider/design_image.dart';

class Sign_In extends StatefulWidget {
  @override
  _Sign_InState createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {

  String _password;

  final TextEditingController _inputController = TextEditingController();

  final GlobalKey<FormState> _cformkey=GlobalKey<FormState>();
  Future<void> Sign_Up()async {
    final cformkey = _cformkey.currentState;
    FirebaseAuth _auth = FirebaseAuth.instance;
      if (cformkey.validate()) {
        cformkey.save();
        try {
            FirebaseUser newuser = await _auth
                .signInWithEmailAndPassword(
                email: _inputController.text, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Design_Image()));
        }

        catch (e) {
          print(e.message);
        }
      }
  }

  bool hidenpass = true;
  void _togglePassView(){
    setState(() {
      hidenpass = !hidenpass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "Account",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextFormField(
                    controller: _inputController,
                    decoration: InputDecoration(
                        hintText: "Type Your E-Mail/Phone Number",
                        labelText: "E-Mail/Phone Number"
                    ),
                    validator: (input){
                      if(input.isEmpty){
                        return "Please Enter an E-Mail";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                Form(
                  key: _cformkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: TextFormField(
                          obscureText: hidenpass,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: "Suggest Password Abc12*",
                            suffixIcon: InkWell(
                              //onTap: VisiblePassword,
                              onTap: _togglePassView,
                              child: hidenpass? Icon(Icons.visibility_off):Icon(Icons.visibility),
                            ),
                          ),
                          onSaved: (input){
                            setState(() {
                              _password=input;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                FlatButton(
                  color: Color(0xFF0fa7d6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Create Account"),
                  onPressed: (){
                    Sign_Up();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}