import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'get_model.dart';

class GetData extends StatefulWidget {
  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {

  Future <void> getData() async{
    var url = 'https://doctorbari24.restaurantsoftbd.com/api/v1/patients';
    var response = await http.get(Uri.parse(url));
    //print(response);
    if(response.statusCode == 200){
      //print('Data found');
      GetDataModel dataModel = getDataModelFromMap(response.body);
      //Data datas = dataModelFrom
      // print(dataModel.data.data.reversed.first.name);
      // print(dataModel.data.data.reversed.first.mobile);
      // print(dataModel.data.data.reversed.first.address);
      List<Datum> arrData = dataModel.data.data;
      // for(var i=0; i<dataModel.data.data.length; i++){
      // print(arrData[i].address);}

      return arrData;
    } else{
      print('Something Wrong');
      throw Exception('Failed to fetch');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot){

          if(snapshot.connectionState != ConnectionState.done){
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError){
            return Text('Something Wrong');
          }
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 80,
                    child: Card(

                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(snapshot.data[index].name != null? snapshot.data[index].name : ''),
                          Text(snapshot.data[index].address != null? snapshot.data[index].address : ''),
                          Text(snapshot.data[index].mobile != null? snapshot.data[index].mobile : ''),
                        ],
                      ),
                    ),
                  );
                });
          }
          return Text('Error while Calling');

        },
      ),
    );
  }
}
