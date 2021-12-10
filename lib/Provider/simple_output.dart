import 'package:flutter/material.dart';
import 'package:practise/Provider/simple_class.dart';
import 'package:provider/provider.dart';

class SimpleDesign extends StatefulWidget {
  @override
  _SimpleDesignState createState() => _SimpleDesignState();
}

class _SimpleDesignState extends State<SimpleDesign> {
  @override
  Widget build(BuildContext context) {

    final getData = Provider.of<SimpleClass>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(getData.name),
          FlatButton(
              onPressed: (){
                getData.Shamol();
                print(getData.Shamol());
              },
              child: Text('Get'))
        ],
      ),
    );
  }
}
