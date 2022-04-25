// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import "package:flutter/material.dart";
import 'package:flutter_application_1/screens/wrapper.dart';

class ChangepswdPage extends StatefulWidget {
  //final Function toggleView;
  //SignupPage({this.toggleView});

  @override
  _ChangepswdPageState createState() => _ChangepswdPageState();
}

class _ChangepswdPageState extends State<ChangepswdPage> {
  String option = '';
  void togglePage(String toggle) {
    setState(() {
      option = toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (option == "login") {
      return LoginPage();
    } else {
      return MaterialApp(
          home: Scaffold(
              body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          Container(
            height: 620,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/33/9c/e0/339ce0299e6567a0f27339957c9a20f8.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 110.0, bottom: 30),
                        padding: EdgeInsets.all(20.0),
                        width: 300.0,
                        height: 400.0,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(210, 255, 255, 255),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border:
                                Border.all(color: Colors.black, width: 2.0)),
                        child: Column(
                          children: [
                            Text(
                              "Reset     Password. ",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                                decoration: InputDecoration(
                              hintText: "Enter phone number",
                              suffixIcon: Icon(Icons.phone),
                              label: Text("Phone"),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            )),
                            SizedBox(height: 20.0),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter email_id",
                                suffixIcon: Icon(Icons.email),
                                label: Text("Email_Id"),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue)),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            SizedBox(
                              height: 40.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.tealAccent,
                                color: Colors.teal,
                                elevation: 7.0,
                                child: InkWell(
                                  onTap: () {
                                    //togglePage("login");
                                    // widget.toggleView();
                                    // runApp(Register());
                                  },
                                  child: Center(
                                    child: Text(
                                      'Change Password',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40.0,
                              margin: EdgeInsets.only(top: 20),
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.tealAccent,
                                color: Colors.teal,
                                elevation: 7.0,
                                child: InkWell(
                                  onTap: () {
                                    togglePage("login");
                                    // widget.toggleView();
                                    // runApp(Register());
                                  },
                                  child: Center(
                                    child: Text(
                                      'Go Back',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )))
              ],
            ),
          ),
        ])),
      )));
    }
  }
}
