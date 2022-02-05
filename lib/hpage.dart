import 'package:flutter/material.dart';
import 'Widgets/data.dart';
import 'Widgets/itemWidget.dart';
class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate((25), (index) => CatalogModel.Products[0]);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text("Home Page using Stateless Widget"),
              backgroundColor: Colors.red,
              leading: IconButton(icon:const Icon(Icons.arrow_back),
                onPressed:() =>{
                  Navigator.pop(context, false)},
              )
          ),
          body: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: dummylist.length,
            itemBuilder: (context,index){
              return ItemsWidget(items: dummylist[index]);
            },
          )
      ),
    );
  }
}

