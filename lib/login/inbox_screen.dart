import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {

  var data;
   InboxScreen({Key? key,required this.data}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inbox"),),
      body: Center(
        child: Column(
          children: [
            Text(widget.data),
            ElevatedButton(onPressed: (){

              Navigator.pop(context,"data from Inbox Screen");
            }, child: Text("Go Back To Login Screen"))
          ],
        ), // we use widget because we are inside state class of a Stateful widget
      ),
    );
  }
}
