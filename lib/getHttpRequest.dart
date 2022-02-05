import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'Widgets/fetchData.dart';
//main app
class httpSection extends StatefulWidget {
  @override
  httpSectionState createState() => httpSectionState();
}
//
class httpSectionState extends State<httpSection> {
  late Future<List<Post>> futurePost;
  @override
  void initState() {
    super.initState();
    futurePost = FetchDatas.fetchPost();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title:const Text("Get Http Request"),
            backgroundColor: Colors.red,
            leading: IconButton(icon:const Icon(Icons.arrow_back),
              onPressed:() =>{
                Navigator.pop(context, false)},
            )
        ),

        body: FutureBuilder<List<Post>>(
          future: futurePost,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 49, 49, 0.4),
                      borderRadius: BorderRadius.circular(15.0),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "id: ${snapshot.data![index].id}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text("UserName: ${snapshot.data![index].name}"),
                        const SizedBox(height: 10),
                        Text("Email: ${snapshot.data![index].email}"),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}