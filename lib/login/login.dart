import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:psd_day1_helloworld1/login/home_screen.dart';
import 'package:psd_day1_helloworld1/login/inbox_screen.dart';

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
            child: LoginScreen(),
          ),
        ),
      ),
    );
  }
}


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var userController= TextEditingController();
  var passController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
     mainAxisSize: MainAxisSize.max,
      children: [

        Container(
          margin: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 100,
          ),
          child: TextFormField(
            controller: userController,
            decoration: InputDecoration(
              labelText: 'username',

              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.account_circle_outlined,
              ),
            ),
          ),
        ),


        Container(
          margin: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
          ),
          child: TextFormField(
            controller: passController,
            obscureText: true ,
            decoration: InputDecoration(
              labelText: 'Password',

              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.key,
              ),
            ),
          ),
        ),
        
        Container(
          margin: EdgeInsets.all(16),
          width: double.infinity,
          child: ElevatedButton(onPressed: () async {

            var username=userController.text;
            var password=passController.text;

            if(username=="admin" && password=="123") {
              //https://pub.dev/packages/fluttertoast
              Fluttertoast.showToast(msg: "User logged in Successfully");

              //https://docs.flutter.dev/cookbook/navigation/navigation-basics
           var secondScreenResponse = await Navigator.push(context,MaterialPageRoute(builder: (context) =>  InboxScreen(data: "data from login Screen",), ));

            Fluttertoast.showToast(msg: secondScreenResponse);
            }
            else
              Fluttertoast.showToast(msg: "Wrong username or password");

          }, child: Text("Login")),
        )
      ],
    );
  }
}
