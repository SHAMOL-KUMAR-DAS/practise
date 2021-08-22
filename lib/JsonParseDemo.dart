import 'package:flutter/material.dart';
import 'Services.dart';
import 'Users.dart';

class JsonParseDemo extends StatefulWidget {
  JsonParseDemo() : super();

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  List<Users> _users;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Users'),
        //actions: [Text(users)],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: _users == null ? 0 : _users.length,
          itemBuilder: (context, index) {
            Users user = _users[index];
            return ListTile(
              title: Text(user.productName),
              subtitle: Text(user.productBrand),
            );
          },
        ),
      ),
    );
  }
}