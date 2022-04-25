import "package:flutter/material.dart";
import 'package:flutter_application_1/screens/change_pswd.dart';
import 'package:flutter_application_1/screens/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  bool _secure = true;

  void _togglevisibility() {
    setState(() {
      _secure = !_secure;
    });
  }

  String option = '';

  void togglePage(String toggle) {
    setState(() {
      option = toggle;
    });
  }

  //text filled state
  String phone = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    if (option == "forgot") {
      return ChangepswdPage();
    } else if (option == "register") {
      return const HomePage();
    } else {
      return MaterialApp(
          home: Scaffold(
              appBar: AppBar(
                title: const Text("Travelजी"),
                backgroundColor: Colors.teal,
              ),
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  Container(
                      height: 620,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://w0.peakpx.com/wallpaper/988/410/HD-wallpaper-kedarnath-bhole-baba-bholenath-shivji-temple.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(children: [
                        Center(
                            child: Container(
                          margin: const EdgeInsets.only(top: 110.0, bottom: 30),
                          padding: const EdgeInsets.all(20.0),
                          width: 300.0,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(210, 255, 255, 255),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              border:
                                  Border.all(color: Colors.black, width: 2.0)),
                          child: Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                const Text(
                                  "Sign in.",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty ||
                                          val.length > 10 ||
                                          val.length < 10) {
                                        return 'Please insert valid phone number';
                                      } else {
                                        return null;
                                      }
                                    },
                                    onChanged: (val) {
                                      setState(() => phone = val);
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepOrangeAccent)),
                                      errorStyle: TextStyle(
                                          fontFamily: 'Comfortaa',
                                          color: Colors.deepOrangeAccent),
                                      hintText: "Enter phone number",
                                      suffixIcon: Icon(Icons.phone),
                                      label: Text("Phone"),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.teal)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue)),
                                    )),
                                const SizedBox(height: 20.0),
                                TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty || val.length < 6) {
                                      return 'Please insert valid Password';
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (val) {
                                    setState(() => password = val);
                                  },
                                  decoration: InputDecoration(
                                    errorBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.deepOrangeAccent)),
                                    errorStyle: const TextStyle(
                                        fontFamily: 'Comfortaa',
                                        color: Colors.deepOrangeAccent),
                                    hintText: "Enter password",
                                    suffixIcon: IconButton(
                                        onPressed: _togglevisibility,
                                        icon: _secure == false
                                            ? const Icon(Icons.visibility)
                                            : const Icon(Icons.visibility_off)),
                                    label: const Text("Password"),
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.teal)),
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
                                  ),
                                  obscureText: _secure,
                                ),
                                Container(
                                  alignment: const Alignment(1.0, 0.0),
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 20.0),
                                  child: InkWell(
                                    onTap: () {
                                      togglePage("forgot");
                                    },
                                    child: const Text(
                                      'Forgot Password',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Comfortaa',
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30.0),
                                SizedBox(
                                  height: 40.0,
                                  child: Material(
                                      borderRadius: BorderRadius.circular(20.0),
                                      shadowColor: Colors.tealAccent,
                                      color: Colors.teal,
                                      elevation: 7.0,
                                      child: InkWell(
                                          onTap: () async {
                                            if (_formkey.currentState!
                                                .validate()) {
                                              //otpstate(context);
                                              //emailid(context);
                                              //clear();
                                            }
                                          },
                                          child: const Center(
                                            child: Text(
                                              'SIGN IN',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Montserrat'),
                                            ),
                                          ))),
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      'New to Travelजी ?',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                    const SizedBox(width: 5.0),
                                    InkWell(
                                      onTap: () {
                                        togglePage("register");
                                        // widget.toggleView();
                                        // runApp(Register());
                                      },
                                      child: const Text(
                                        'Register',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                      ]))
                ],
              ))));
    }
  }
}
