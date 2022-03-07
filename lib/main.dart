
import 'package:flutter/material.dart';
import 'package:viralf/login_page.dart';
import 'home.dart';
// import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // primaryTextTheme: GoogleTheme.
      ),
      darkTheme: ThemeData(
        primarySwatch:Colors.purple
        // brightness: Brightness.dark,
      ),
      
      // home: HomePage(),
initialRoute: '/login',
      routes: {
        '/':(context)=>HomePage(),
        '/login':(context)=>LoginPage()
      },
    );
  }
}