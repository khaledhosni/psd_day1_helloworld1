import 'package:flutter/material.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: "PSD App",
      home: Scaffold(
        appBar: AppBar(
            title: Text("PSD App")
        ),
        body: Center(
          child: Column(
            children: [
               Text("Welcome to PSD App",
                style: TextStyle(color: Colors.amber, fontSize: 22),
               ),

              ElevatedButton(onPressed: (){
                print("Hello event!");
                  }, child: Text("Click Here"))
            ],
          ),
         ),
      ),
    );
  }
}