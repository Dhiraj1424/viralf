
import 'package:flutter/material.dart';
import 'package:viralf/pages/login_page.dart';
import 'package:viralf/utlis/routes.dart';
import 'package:viralf/widgets/theme.dart';
import 'pages/home.dart';
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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
     
      // home: HomePage(),
initialRoute: 'MyRoute.homeRoute',
      routes: {
        MyRoute.homeRoute:(context)=>HomePage(),
        '/login':(context)=>LoginPage()
      },
    );
  }
}