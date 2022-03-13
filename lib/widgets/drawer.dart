import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    final url='https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300';
    return Drawer(
     
      child: Container(
        color: Colors.purple,
        
        child: ListView(
          
          
          children: [
            
            DrawerHeader(
              
              padding: EdgeInsets.zero,
              // margin: EdgeInsets.zero,
              
              child: UserAccountsDrawerHeader(
               
                margin: EdgeInsets.zero,
               
                accountName: Text('dhiraj'), accountEmail: Text('abc@gmail.com'),
              
              currentAccountPicture:CircleAvatar(
            
                backgroundImage: NetworkImage(url)
              )
              )),

              ListTile(
                leading: Icon(Icons.home,
                color: Colors.white,
                ),
                
                title: Text('Home',textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),),
                
              ),

               ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                color: Colors.white,
                ),
                
                title: Text('Profile',textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),),
                
              ),
               ListTile(
                 onTap: (){},
                leading: Icon(Icons.email_sharp,
                color: Colors.white,
                ),
                
                title: Text('Mail',textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),),
                
              ),
              
          ],
        ),
      ),
    );
  }
}