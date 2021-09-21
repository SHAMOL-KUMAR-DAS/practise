import 'package:flutter/material.dart';
import 'package:practise/post_model.dart';
import 'package:http/http.dart' as http;

class Add_Data extends StatefulWidget {
  @override
  _Add_DataState createState() => _Add_DataState();
}

Future<PostDataModel> createUser(String username, String useremail, String usermobile, String userimage) async{
  final String apiUrl = "https://fluttertestproject.plasmafreelancingteam.com/api.php";

  final response = await http.post(apiUrl, body: {
    "name": username,
    "email": useremail,
    "Mobile": usermobile,
    "image": userimage
  });
  //if(response.statusCode == 201){
    final String responseString = response.body;
    return postDataModelFromJson(responseString);
  //}
  // else {
  //   return null;
  // }
}

class _Add_DataState extends State<Add_Data> {

  PostDataModel _user;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController image = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Data'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              controller: name,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Your Name",
                  labelStyle: TextStyle(color: Colors.black)
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              controller: email,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  labelText: "E-Mail",
                  hintText: "Enter Your Email",
                  labelStyle: TextStyle(color: Colors.black)
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              controller: mobile,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  labelText: "Mobile Number",
                  hintText: "01x02101010",
                  labelStyle: TextStyle(color: Colors.black)
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              controller: image,
              //keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  labelText: "Image",
                  hintText: "Sample",
                  labelStyle: TextStyle(color: Colors.black)
              ),
            ),
          ),
          SizedBox(height: 20,),
          FlatButton(
            color: Colors.red,
            onPressed: () async {
              final String usersname = name.text;
              final String usersemail = email.text;
              final String usersmobile = mobile.text;
              final String usersimage = image.text;

              final PostDataModel user = await createUser(usersname, usersemail, usersmobile, usersimage);
              setState(() {
                _user = user;
              });
            },
            child: Text('Add User'),
          ),
          SizedBox(height: 20,),
          _user == null? Text('User Null') : Text('Success')
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:practise/post_model.dart';
// import 'package:http/http.dart' as http;
//
// class Add_Data extends StatefulWidget {
//   @override
//   _Add_DataState createState() => _Add_DataState();
// }
//
// Future<PostDataModel> createUser(String username, String useremail) async{
//   //String usermobile
//   final String apiUrl = "https://reqres.in/api/users";
//
//   final response = await http.post(apiUrl, body: {
//     "name": username,
//     "job": useremail
//     //"mobile": usermobile
//   });
//   if(response.statusCode == 201){
//   final String responseString = response.body;
//   return postDataModelFromJson(responseString);
//   }
//   else {
//     return null;
//   }
// }
//
// class _Add_DataState extends State<Add_Data> {
//
//   PostDataModel _user;
//   TextEditingController name = TextEditingController();
//   TextEditingController email = TextEditingController();
//   //TextEditingController mobile = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Data'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 30, right: 30),
//             child: TextFormField(
//               controller: name,
//               style: TextStyle(color: Colors.black),
//               decoration: InputDecoration(
//                   labelText: "Name",
//                   hintText: "Enter Your Name",
//                   labelStyle: TextStyle(color: Colors.black)
//               ),
//             ),
//           ),
//           SizedBox(height: 20,),
//           Padding(
//             padding: const EdgeInsets.only(left: 30, right: 30),
//             child: TextFormField(
//               controller: email,
//               style: TextStyle(color: Colors.black),
//               decoration: InputDecoration(
//                   labelText: "E-Mail",
//                   hintText: "Enter Your Email",
//                   labelStyle: TextStyle(color: Colors.black)
//               ),
//             ),
//           ),
//           //SizedBox(height: 20,),
//           // Padding(
//           //   padding: const EdgeInsets.only(left: 30, right: 30),
//           //   child: TextFormField(
//           //     controller: mobile,
//           //     keyboardType: TextInputType.number,
//           //     style: TextStyle(color: Colors.black),
//           //     decoration: InputDecoration(
//           //         labelText: "Mobile Number",
//           //         hintText: "01x02101010",
//           //         labelStyle: TextStyle(color: Colors.black)
//           //     ),
//           //   ),
//           // ),
//           SizedBox(height: 20,),
//           FlatButton(
//             color: Colors.red,
//             onPressed: () async {
//               final String usersname = name.text;
//               final String usersemail = email.text;
//               //final String usersmobile = mobile.text;
//
//               final PostDataModel user = await createUser(usersname, usersemail);
//               //usersmobile
//               setState(() {
//                 _user = user;
//               });
//             },
//             child: Text('Add User'),
//           ),
//           SizedBox(height: 20,),
//           _user == null? Text('') : Text('Success ${_user.name}, ${_user.id} is created at ${_user.createdAt.toIso8601String()}')
//         ],
//       ),
//     );
//   }
// }
