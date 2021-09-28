
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class Get_Image extends ChangeNotifier{

  File image;
  Future cameraImage() async {
    final pickedFile =
    await ImagePicker.pickImage(source: ImageSource.camera);
    //setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
      notifyListeners();
    //});
  }

  Future galleryImage() async {
    final pickedFile =
    await ImagePicker.pickImage(source: ImageSource.gallery);
    //setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
      notifyListeners();
    //});
  }

  Future<void> sendData()async{
    var imageStorage = FirebaseStorage.instance.ref().child(image.path);
    var put = imageStorage.putFile(image);
    String imgurl = await (await put.onComplete).ref.getDownloadURL();
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    await (imgurl);
    Firestore.instance.collection('Practise').document().setData({
      'Image': imgurl
    });
  }

}
