import 'package:flutter/material.dart';

class One extends StatefulWidget {
  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shamol Kumar Das'),
      ),
      body: Column(
        children: [
          Text('Shamol'),
          Text('Shamol Kumar'),
          Text('Shamol Kumar Das')
        ],
      ),
    );
  }
}
