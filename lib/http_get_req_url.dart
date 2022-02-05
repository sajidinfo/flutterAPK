import 'package:flutter/material.dart';
import 'package:dio/dio.dart';





class GetUrlReq extends StatefulWidget {
  const GetUrlReq({Key? key}) : super(key: key);

  @override
  _GetUrlReqState createState() => _GetUrlReqState();
}

class _GetUrlReqState extends State<GetUrlReq> {
  late Response response;
  var dio = Dio();

  gethttp() async{
    final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
    print(response.data);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("HTTP Page"),
            backgroundColor: Colors.red,
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() =>{
                Navigator.pop(context, false)},
            )
        ),
        body: Container(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
