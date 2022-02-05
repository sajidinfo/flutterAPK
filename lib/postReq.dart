import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
TextEditingController nameControl = TextEditingController();
TextEditingController usernameControl = TextEditingController();
TextEditingController emailControl = TextEditingController();
TextEditingController passwordControl = TextEditingController();
TextEditingController genderControl = TextEditingController();

class MyFormPage extends StatefulWidget {
  const MyFormPage({Key? key}) : super(key: key);

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool value = false;
  int val = 0;
  var vv ="";

  void validateAndSave()async {
    final FormState? form = _formKey.currentState;
    const token = "";
    if (form!.validate()) {
      var obj = new Map();
      obj['name'] = '${nameControl.text}';
      obj['username'] = '${usernameControl.text}';
      obj['email'] = '${emailControl.text}';
      obj['password'] = '${passwordControl.text}';
      obj['gender'] = '${'male'}';
      var jsondata = jsonEncode(obj);
      this.vv = jsondata;
      /////////////////////////////////////////////
      Dio dio = new Dio();
      dio.options.headers['content-Type'] = 'application/json';
      dio.options.headers["authorization"] = "token ${token}";
      var response = await dio.post("http://localhost:3000/post", data: jsondata);
      print(response);
    } else {
      print('Form is invalid');
    }
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text("Form Page"),
              backgroundColor: Colors.red,
              leading: IconButton(icon:Icon(Icons.arrow_back),
                onPressed:() =>{
                  Navigator.pop(context, false)},
              )
          ),
          body:SingleChildScrollView(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(left: 0),
                  child: Text("Sign Up",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    controller: nameControl,
                    decoration: const InputDecoration(
                      labelText: "Enter your Full Name",
                      hintStyle: TextStyle(
                        height:15,
                        color: Colors.red,
                      ),
                      labelStyle: TextStyle(
                        height:0,
                        color: Colors.black,
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),
                    ),
                    validator: (value) =>
                    value!.isEmpty ? 'Full Name cannot be blank' : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    controller: usernameControl,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.red,
                        height:15,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        height:0,
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),
                      labelText: 'Enter your User Name',
                    ),
                    validator: (value) =>
                    value!.isEmpty ? 'User Name cannot be blank' : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    controller: emailControl,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.red,
                        height:15,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        height:0,
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),
                      labelText: 'Enter your Email',
                    ),
                    validator: (value) =>
                    value!.isEmpty ? 'Email cannot be blank' : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    controller: passwordControl,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        height:15,
                        color: Colors.red,
                      ),
                      labelStyle: TextStyle(
                        height:0,
                        color: Colors.black,
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),
                      labelText: 'Enter your Password',
                    ),
                    validator: (value) =>
                    value!.isEmpty ? 'Password cannot be blank' : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        height:15,
                        color: Colors.red,
                      ),
                      labelStyle: TextStyle(
                        height:0,
                        color: Colors.black,
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),
                      labelText: 'Re-type Password',
                    ),
                    validator: (value) =>
                    value!.isEmpty ? 'Passwoed cannot be blank' : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: ListTile(
                    title: Text("Male"),
                    leading: Radio(
                      value: 0,
                      groupValue: val,
                      onChanged: (val) {
                        setState(() {
                          val = val as String;
                        });
                      },
                      activeColor: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:0),
                  child: ListTile(
                    title: Text("Female"),
                    leading: Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (val) {
                        setState(() {
                          val = val as String;
                        });
                      },
                      activeColor: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize:Size(2,2),
                      shadowColor: Colors.red,
                      primary: Colors.red,
                    ),
                    onPressed:validateAndSave,
                    child: const Text('Submit',
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}




