import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: MyScreen(),
          ),
        ),
      ),
    );
  }
}


class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  var date="";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(date),
        ElevatedButton(onPressed: (){

          var time=DateTime.now();

          setState(() {
            date=time.toString();
          });

        }, child: Text("Update Time"))
      ],
    );
  }
}
