import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello flutter'),),
      body: Center(child: Text('Hello',
      textScaleFactor: 2.0,
      
      )),
    );
  }
}