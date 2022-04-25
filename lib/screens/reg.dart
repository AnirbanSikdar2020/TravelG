import "package:flutter/material.dart";
import 'package:flutter_application_1/screens/wrapper.dart';
import 'package:uipickers/uipickers.dart';

enum genderGroup { none, male, female, others }

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  //genderGroup _value = genderGroup.none;
  String dropdownValue = 'Select';
  int? selectedItem = 0;
  DateTime selectedDate = DateTime.now();

  bool loading = false;

  String option = '';
  void togglePage(String toggle) {
    setState(() {
      option = toggle;
    });
  }

  //text filled state
  String email = '';
  String password = '';
  String confirmpassword = '';
  String name = '';
  String age = '';
  String phone = '';
  String error = '';
  String code = '';
  String otp = '';
  String dob = '';

  @override
  Widget build(BuildContext context) {
    if (option == "login") {
      return LoginPage();
    } else {
      return MaterialApp(
          home: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 30.0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://w0.peakpx.com/wallpaper/564/204/HD-wallpaper-kedarnath-temple-bholenath-devokedev-kedarnath-mahadev-mountains-shiv-shiva-temple-uttrakhand.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        Center(
                            child: Container(
                                margin: const EdgeInsets.only(top: 30.0),
                                padding: const EdgeInsets.fromLTRB(
                                    20.0, 15.0, 20.0, 20.0),
                                width: 300.0,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(210, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  //border: Border.all(
                                  //color: Colors.black, width: 2.0)
                                ),
                                child: Form(
                                  key: _formkey,
                                  child: Column(children: [
                                    const Text(
                                      "Sign Up.",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    TextFormField(
                                        controller: nameController,
                                        validator: (val) {
                                          RegExp regex = RegExp(
                                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\")) (([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))$');
                                          if (val!.isEmpty ||
                                              !regex.hasMatch(val)) {
                                            return 'Please insert valid name for e.g. John Doe';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (val) {
                                          setState(() => name = val);
                                        },
                                        decoration: const InputDecoration(
                                          errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.deepOrangeAccent)),
                                          errorStyle: TextStyle(
                                              fontFamily: 'Comfortaa',
                                              color: Colors.deepOrangeAccent),
                                          hintText: "Enter Full Name",
                                          label: Text("Full Name"),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.teal)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        )),
                                    const SizedBox(height: 15.0),
                                    Row(children: [
                                      const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Gender")),
                                      const SizedBox(width: 50.0),
                                      DropdownButton<String>(
                                        value: dropdownValue,
                                        style:
                                            const TextStyle(color: Colors.teal),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.teal,
                                        ),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: <String>[
                                          'Select',
                                          'Male',
                                          'Female',
                                          'Others'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ]),

                                    /*Row(
                                      children: [
                                        Radio(
                                          value: genderGroup.male,
                                          groupValue: _value,
                                          onChanged: (genderGroup? val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                        ),

                                        const Text("Male"),
                                        //const SizedBox(width: 13.0),
                                        Radio(
                                          value: genderGroup.female,
                                          groupValue: _value,
                                          onChanged: (genderGroup? val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                        ),
                                        const Text("Female"),
                                        // const SizedBox(width: 13.0),
                                        Radio(
                                          value: genderGroup.others,
                                          groupValue: _value,
                                          onChanged: (genderGroup? val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                        ),
                                        const Text("Others"),
                                      ],
                                    ),*/
                                    const SizedBox(height: 0.0),
                                    TextFormField(
                                        controller: ageController,
                                        validator: (val) {
                                          if (val!.isEmpty ||
                                              int.parse(val) < 21 ||
                                              int.parse(val) > 39) {
                                            return 'Please insert valid age';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (val) {
                                          setState(() => age = val);
                                        },
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.deepOrangeAccent)),
                                          errorStyle: TextStyle(
                                              fontFamily: 'Comfortaa',
                                              color: Colors.deepOrangeAccent),
                                          hintText: "Enter Age",
                                          label: Text("Age"),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.teal)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        )),
                                    const SizedBox(height: 25.0),
                                    Row(
                                      children: [
                                        const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Date of birth")),
                                        const SizedBox(width: 90.0),
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                dob =
                                                    _showMyDialog().toString();
                                              });
                                            },
                                            child: const Text(
                                              "Select date",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextFormField(
                                            controller: dobController,
                                            validator: (val) {
                                              val = dob;
                                              if (val.isEmpty) {
                                                return 'Please insert valid date YYYY-MM-DD';
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                                errorBorder:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .deepOrangeAccent)),
                                                errorStyle: const TextStyle(
                                                    fontFamily: 'Comfortaa',
                                                    color: Colors
                                                        .deepOrangeAccent),
                                                hintText: "$selectedDate",
                                                enabledBorder:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.teal)),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .blue))))),
                                    const SizedBox(height: 2.0),
                                    TextFormField(
                                        controller: phoneController,
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
                                                  color:
                                                      Colors.deepOrangeAccent)),
                                          errorStyle: TextStyle(
                                              fontFamily: 'Comfortaa',
                                              color: Colors.deepOrangeAccent),
                                          hintText: "Enter Phone",
                                          label: Text("Phone"),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.teal)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        )),
                                    const SizedBox(height: 2.0),
                                    TextFormField(
                                        controller: emailController,
                                        validator: (val) {
                                          RegExp regex = RegExp(
                                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                                          if (val!.isEmpty ||
                                              !regex.hasMatch(val)) {
                                            return 'Please insert valid Email_Id';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (val) {
                                          setState(() => email = val);
                                        },
                                        decoration: const InputDecoration(
                                          errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.deepOrangeAccent)),
                                          errorStyle: TextStyle(
                                              fontFamily: 'Comfortaa',
                                              color: Colors.deepOrangeAccent),
                                          hintText: "Enter Email",
                                          label: Text("Email"),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.teal)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        )),
                                    const SizedBox(height: 2.0),
                                    TextFormField(
                                        controller: passwordController,
                                        validator: (val) {
                                          if (val!.isEmpty || val.length < 6) {
                                            return 'Please enter Password';
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (val) {
                                          setState(() => password = val);
                                        },
                                        decoration: const InputDecoration(
                                          errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.deepOrangeAccent)),
                                          errorStyle: TextStyle(
                                              fontFamily: 'Comfortaa',
                                              color: Colors.deepOrangeAccent),
                                          hintText: "Enter Password",
                                          label: Text("Password"),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.teal)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        )),
                                    const SizedBox(height: 2.0),
                                    TextFormField(
                                        controller: cpasswordController,
                                        validator: (val) {
                                          if (passwordController.text !=
                                                  cpasswordController.text ||
                                              cpasswordController.text == '') {
                                            return "Password didn't match";
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (val) {
                                          setState(() => confirmpassword = val);
                                        },
                                        decoration: const InputDecoration(
                                          errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.deepOrangeAccent)),
                                          errorStyle: TextStyle(
                                              fontFamily: 'Comfortaa',
                                              color: Colors.deepOrangeAccent),
                                          hintText: "Re-Enter Password",
                                          label: Text("Confirm Password"),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.teal)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        )),
                                    const SizedBox(height: 15.0),
                                    SizedBox(
                                      height: 40.0,
                                      child: Material(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        shadowColor: Colors.tealAccent,
                                        color: Colors.teal,
                                        elevation: 7.0,
                                        child: InkWell(
                                          onTap: () async {
                                            if (_formkey.currentState!
                                                .validate()) {
                                              //otpstate(context);
                                              //emailid(context);
                                              clear();
                                            }
                                          },
                                          child: const Center(
                                            child: Text(
                                              'SIGN UP',
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
                                    const SizedBox(height: 20.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          'Already Registered ?',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                        const SizedBox(width: 5.0),
                                        InkWell(
                                          onTap: () {
                                            togglePage("login");
                                          },
                                          child: const Text(
                                            'Login',
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
                                  ]),
                                )))
                      ],
                    ),
                  )
                ],
              ))));
    }
  }

  clear() {
    nameController.text = '';
    ageController.text = '';
    emailController.text = '';
    phoneController.text = '';
    passwordController.text = '';
    cpasswordController.text = '';
    otpController.text = '';
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select date'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const SizedBox(height: 12),
                SizedBox(
                    width: 150,
                    height: 34,
                    child: AdaptiveDatePicker(
                      initialDate: selectedDate,
                      firstDate: DateTime.utc(1980, 1, 1, 0, 0, 0, 0, 0),
                      lastDate: DateTime.utc(2040, 1, 1, 0, 0, 0, 0, 0),
                      onChanged: (date) {
                        setState(() => selectedDate = date);
                      },
                    ))
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Select'),
              onPressed: () {
                Navigator.of(context).pop(selectedDate);
              },
            ),
          ],
        );
      },
    );
  }
}

void date() {
  /*SizedBox(
                 height: 250,
                              child: ScrollDatePicker(
                                selectedDate: _selectedDate,
                                locale: DatePickerLocale.koKR,
                                onDateTimeChanged: (DateTime value) {
                                  setState(() {
                                    _selectedDate = value;
                                  });
                                },
                              ),
                            ),*/
}
