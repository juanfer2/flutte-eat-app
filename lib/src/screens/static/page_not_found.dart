import 'package:flutter/material.dart';

class PageNotFound extends StatefulWidget {
  @override
  _PageNotFoundState createState() => _PageNotFoundState();
}

class _PageNotFoundState extends State<PageNotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page not found'),
      ),
      body: Column(
        children: <Widget>[Text('404 Page not Found')],
      ),
    );
  }
}
