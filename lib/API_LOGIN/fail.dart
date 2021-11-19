import 'package:flutter/material.dart';

class FailPage extends StatefulWidget {
  @override
  _FailPageState createState() => _FailPageState();
}

class _FailPageState extends State<FailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Fail Page')
        ],
      ),
    );
  }
}
