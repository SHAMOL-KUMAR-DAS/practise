import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'get_model.dart';
class Installment_Page extends StatefulWidget {

  List<Result> getdata;


  @override
  _Installment_PageState createState() => _Installment_PageState();
}

class _Installment_PageState extends State<Installment_Page> {

  // String baseUrl = "https://crm.shaplacityltd.com.bd/api/installment";
  // String userID;

  String userID;
  String token;
  Map insdata;
  List installdata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero,() async{
      await getData();
    });
  }

  List<Result> installment;
  Future getData() async{
    final installmentresponse = await http.get('https://fluttertestproject.plasmafreelancingteam.com/api.php');
    //post = input/add
    //get = view
    //delete = delete
    //put = edit
    Getdatamodel data = getdatamodelFromJson(installmentresponse.body);
    var jsonResponse = jsonDecode(installmentresponse.body);
    print(installmentresponse.body);
    insdata = jsonDecode(installmentresponse.body);
    setState(() {
      installment =  data.result;
    });
    print(installdata);
    print('installment ${installment.length}');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0XFFC1FCC7),
              toolbarHeight: 150,
              automaticallyImplyLeading: false,

              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  // IconButton(
                  //     icon: Icon(Icons.home_outlined,
                  //       size: 40,
                  //       color: Color(0XFF18A751),
                  //     ),
                  //     onPressed: (){
                  //       Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(userDetails: widget.userDetails,installmentdata: [widget.installmentsad])));
                  //     }
                  // ),


                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 10),
                    child: Text("Installment",
                      style: TextStyle(
                        color: Color(0XFF18A751),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            backgroundColor: Color(0XFF18A751),


            body: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: installment == null ? Center(child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                      backgroundColor: Colors.greenAccent,
                    )): Padding(
                      padding: const EdgeInsets.only(left: 05.0,top: 20),
                      child: Column(
                        children: [

                          SizedBox(height: 20,),

                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                                itemCount: installment.length,
                                itemBuilder: (context, index){
                                  return Column(
                                    children: [
                                      SizedBox(width: MediaQuery.of(context).size.width/15,),
                                      Container(
                                          height: 30,
                                          child: Text(installment[index].id,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,

                                            ),
                                          )
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width/7,),
                                      Container(
                                          height: 30,

                                          child: Text(installment[index].email,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,

                                            ),
                                          )
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width/15,),
                                      Container(
                                          height: 30,
                                          child: Text(installment[index].name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,

                                            ),
                                          )),
                                      // SizedBox(width: MediaQuery.of(context).size.width/15,),
                                      // Container(
                                      //     height: 30,
                                      //     width: 100,
                                      //     child: Text(installment[index]..toString(),
                                      //       style: TextStyle(
                                      //         color: Colors.white,
                                      //         fontSize: 15,
                                      //
                                      //       ),
                                      //     )
                                      // ),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}