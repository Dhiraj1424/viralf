import 'package:flutter/material.dart';
import 'package:viralf/home.dart';
import 'package:viralf/utlis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoute.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                              hintText: "enter user name",
                              labelText: "User name"),
                          validator: (value) {
                            if (value == "") {
                              return 'please fill the name';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "enter password", labelText: "Password"),
                        validator: (String? value) {                        
                    if (value != null && value.isEmpty) {
                      return "Password can't be empty";
                      }
                         else if (value != null && value.length<6){
                           return 'please fill more than 6';
                         }
                         return null;
                        },
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      

                      Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () => moveToHome(context),
                          child: Container(
                            width: 100,
                            height: 50,
                        

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
          ),
        ));
  }
}
