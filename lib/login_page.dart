import 'package:flutter/material.dart';
import 'package:viralf/home.dart';
import 'package:viralf/utlis/routes.dart';

class LoginPage extends StatefulWidget {
  
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_page.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration:  InputDecoration(
                          hintText: "enter user name", labelText: "User name"),
                          onChanged: (value){
                            name=value;
                            setState(() {
                              
                            });
                          }
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration:  InputDecoration(
                          hintText: "enter password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoute.homeRoute);
                       
                    //   },
                      
                    //   child: Text('Login'),
                      
                    //   style:ElevatedButton.styleFrom(
                        
                    //     side: BorderSide(color: Colors.red, width: 2),
                    //     shape: RoundedRectangleBorder(
                          
                    //       borderRadius: BorderRadius.circular(10)
                    //     )
                    //   )
                    // )

                    Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple,
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: (){
                          Navigator.pushNamed(context, MyRoute.homeRoute);
                        },
                        child: Container(
                      
                          width: 100,
                          height: 50,
                          // decoration: const BoxDecoration(
                            
                          //   color: Colors.blue,
                          // borderRadius: BorderRadius.only(
                          //   topLeft: Radius.circular(10),
                          //   bottomLeft: Radius.circular(10)
                          // ),
                          
                         
                          // ),
                          
                          alignment: Alignment.center,
                          child: const Text('Login'),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
