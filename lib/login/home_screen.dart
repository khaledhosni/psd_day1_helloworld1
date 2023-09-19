import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var data="";
   HomeScreen({Key? key,  required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: Text(
            data,style: TextStyle(fontSize: 40),
          )
      ),

    );
  }
}
