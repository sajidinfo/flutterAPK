import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Post {
  int id;
  String name;
  String email;

  //
  Post({
    required this.id,
    required this.name,
    required this.email,
  });
//
  factory Post.fromMap(Map<String, dynamic> json) => Post(
    id: json["id"],
    name: json["name"],
    email: json["email"],
  );
}
class FetchDatas extends StatelessWidget {
  const FetchDatas({Key? key}) : super(key: key);


// request
  static Future<List<Post>> fetchPost() async {
    // 1 way
    var res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (res.statusCode == 200) {
      final parsed = json.decode(res.body).cast<Map<String, dynamic>>();

      return parsed.map<Post>((json) => Post.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }





  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
