import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:practise/Provider/Get_Image.dart';
import 'package:provider/provider.dart';

class Student_Information extends StatefulWidget {
  @override
  _Student_InformationState createState() => _Student_InformationState();
}

class _Student_InformationState extends State<Student_Information> {

  @override
  Widget build(BuildContext context) {
    final _get_image = Provider.of<Get_Image>(context, listen: true);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              //width: MediaQuery.of(context).size.width * 0.3,
              child: _get_image.image == null ? Text("") : Image.file(_get_image.image),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  _get_image.cameraImage();
                },
                child: Icon(
                  Icons.camera_alt_outlined,
                  //color: Color(0xFFe37c22),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  _get_image.galleryImage();
                },
                child: Icon(Icons.photo_library_outlined,
                  //    color: Color(0xFFe37c22)
                  color: Colors.black,
                ),
              )
            ],
          ),
          FlatButton(
              onPressed: (){
            _get_image.sendData();
          }, child: Text('Save'))
        ],
      ),
    );
  }
}
