import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:viralf/models/catalog.dart';
import 'package:viralf/widgets/ItemWidget.dart';
import 'package:viralf/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
  // @override
  // void initState(){
  //   super.initState();
  //   
  // }



class _HomePageState extends State<HomePage> {
 @override
      void initState() {
        super.initState();
        loadData();
      }
  loadData()async{
    await Future.delayed(Duration(seconds: 5));
    final catalogjson=await rootBundle.loadString("assets/files/catalog.json");
    var decodeData=jsonDecode(catalogjson);
    var productData=decodeData["products"];
    CatalogModel.items=List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('hello flutter'),
      ),
      body:Padding(
        padding: EdgeInsets.all(10),
        child: (CatalogModel.items !=null && CatalogModel.items.isNotEmpty)? ListView.builder(
          itemCount:CatalogModel.items.length ,
          itemBuilder:(context, indext){
            return ItemWidget(
              item: CatalogModel.items[indext],
      
            );
          }
           ):Center(child: CircularProgressIndicator(),)
      ),
      drawer: MyDrawer(),
    );
  }
}
