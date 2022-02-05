import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class gallaryPage extends StatelessWidget {
  const gallaryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int _index = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Gallary Page"),
            backgroundColor: Colors.red,
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() =>{
                Navigator.pop(context, false)},
            )
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(40),
                child: Text("Top 10 Card",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 200, // card height
                child: PageView.builder(
                  itemCount: 20,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.9,
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Card ${i + 1}",
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.all(40),
                child: Text(" Radius Card",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 100, // card height
                child: PageView.builder(
                  itemCount: 10,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.9,
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
                        child: Center(
                          child: Text(
                            "Card ${i + 1}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.all(40),
                child: Text("Round Radius Card",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: PageView.builder(
                  itemCount: 10,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.9,
                      child: Card(
                        elevation: 6,
                        shape: CircleBorder( ),
                        color: Colors.red[100],
                        child: Center(
                          child: Text(
                            "Card ${i + 1}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  setState(int Function() param0) {}
}
