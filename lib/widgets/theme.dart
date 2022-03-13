// import 'dart:js';

import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context)=> ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black), 
          // toolbarTextStyle: Theme.of(context).textTheme.bodyText2, 
          titleTextStyle: Theme.of(context).textTheme.headline6
        )
        // primaryTextTheme: GoogleTheme.
      );

static ThemeData darkTheme(BuildContext context)=> ThemeData(
       brightness: Brightness.dark,
        // primaryTextTheme: GoogleTheme.
      );
}