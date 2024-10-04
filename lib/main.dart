import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Myapp(),
      )
    );
  }
}

class Myapp extends StatefulWidget {

  @override 
  State<Myapp> createState() => _Myapp();
}

class _Myapp extends State<Myapp> {
  late double height, width;

  @override 
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Stack(
          children: [
            Column(
              children: [
                Container(
                  height: height* .5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(60)
                    )
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    ),
                  child: Container(
                    height: height* .5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60)
                    )
                    ),
                  ),
                ),
              ],
            ),
                Positioned(
                  left: width * .3,
                  bottom: height * .4,
                  child: Container(
                    height: width * .5,
                    width: width * .5,
                    child: Text("🥰",
                    style: TextStyle(fontSize: 120),
                    ),
                  ),
                )
          ],
        );
    }
}