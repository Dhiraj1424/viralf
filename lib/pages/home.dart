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
    var catalogjson=await rootBundle.loadString("assets/files/catalog.json");
    print(catalogjson);
  }

  @override
  Widget build(BuildContext context) {
    final dumylist=List.generate(30,(indext)=>CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('hello flutter'),
      ),
      body:ListView.builder(
        itemCount:dumylist.length ,
        itemBuilder:(context, indext){
          return ItemWidget(
            item: dumylist[indext],

          );
        }
         ),
      drawer: MyDrawer(),
    );
  }
}
