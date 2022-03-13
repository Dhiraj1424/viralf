import 'package:flutter/material.dart';
import 'package:viralf/models/catalog.dart';
import 'package:viralf/widgets/ItemWidget.dart';
import 'package:viralf/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello flutter'),
      ),
      body:ListView.builder(
        itemCount:CatalogModel.items.length ,
        itemBuilder:(context, indext){
          return ItemWidget(
            item: CatalogModel.items[indext],
            
          );
        }
         ),
      drawer: MyDrawer(),
    );
  }
}
