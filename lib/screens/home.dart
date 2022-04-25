// ignore_for_file: import_of_legacy_library_into_null_safe

import "package:flutter/material.dart";
import 'package:flutter_application_1/screens/reg.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int _page = 0;

  int option = -1;

  void togglePage(int toggle) {
    setState(() {
      option = toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (option == 1) {
      return const SignupPage();
    } else {
      return MaterialApp(
          home: Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: null,
              child: Image.asset("images/med.png"),
              tooltip: "Medical Emergency",
              mini: true,
            ),
            const SizedBox(
              height: 10.0,
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: null,
              child: Image.asset("images/sen.png"),
              tooltip: "Senior citizen Assistance",
              mini: true,
            ),
            const SizedBox(
              height: 10.0,
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: null,
              child: Image.asset('images/sos.png'),
              tooltip: "Emergency",
              mini: true,
            )
          ],
        ),
        appBar: AppBar(
          elevation: 0.1,
          title: const Text("Travelजी"),
          backgroundColor: Colors.teal,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: null,
                child: Image.asset(
                  "images/book.png",
                  width: 150.0,
                  height: 150.0,
                ),
                tooltip: "Book your package now",
                mini: true,
              ),
            ),
          ],
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSlideshow(
                width: double.infinity,
                height: 150,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/05/16/974364-kedarnath.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.cdn.newsbytesapp.com/images/l218_16091626497695.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://devbhumibrotherhood.com/wp-content/uploads/2017/05/yamunotri-temple-devbhumibrotherhood.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://hikestravel.com/wp-content/uploads/2020/08/gangotri-temple.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
                autoPlayInterval: 2000,
                isLoop: true,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "About Char Dham Temples",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 22.0, top: 20.0, right: 22.0, bottom: 25.0),
                child: Text(
                  "The great Hindu philosopher and reformer Adi Shankaracharya initiated the 4 Dham Yatra in an attempt to revive the Hindu religion during the 8th century. Now, thousands of devotees from all around the world become the part of it.",
                  textAlign: TextAlign.justify,
                ),
              ),

// Cards ==============================================================
              Container(
                height: 180,
                margin: const EdgeInsets.all(10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {}
                      /*Navigator.push( context, 
                            //MaterialPageRoute(builder: (context) => Kd()),);
                           }*/
                      ,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        width: 152,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 251, 251, 251),
                          boxShadow: const [
                            BoxShadow(color: Color(0xf2000000), blurRadius: 2),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(40), // Image border
                              child: Column(
                                //  size: Size.fromRadius(48), // Image radius
                                children: [
                                  Image.asset('images/kedar_1.jpg',
                                      height: 110,
                                      width: 150,
                                      fit: BoxFit.cover),
                                  const ListTile(
                                    title: Text(
                                      'Kedarnath',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.teal),
                                    ),
                                    subtitle: Text(
                                        'Openning-22 jan 2023 Closing-22 jan 2023',
                                        style: TextStyle(
                                            fontSize: 12.0, color: Colors.red)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

//=================================================================

                    InkWell(
                      onTap: () {}
                      /*Navigator.push( context, 
                            //MaterialPageRoute(builder: (context) => Kd()),);
                           }*/
                      ,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        width: 152,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 251, 251, 251),
                          boxShadow: const [
                            BoxShadow(color: Color(0xf2000000), blurRadius: 2),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(40), // Image border
                              child: Column(
                                //  size: Size.fromRadius(48), // Image radius
                                children: [
                                  Image.asset('images/Badrinath.jpg',
                                      height: 110,
                                      width: 150,
                                      fit: BoxFit.cover),
                                  const ListTile(
                                    title: Text(
                                      'Badrinath',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.teal),
                                    ),
                                    subtitle: Text(
                                        'Openning-22 jan 2023 Closing-22 jan 2023',
                                        style: TextStyle(
                                            fontSize: 12.0, color: Colors.red)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
//=================================================================================================
                    InkWell(
                      onTap: () {}
                      /*Navigator.push( context, 
                            //MaterialPageRoute(builder: (context) => Kd()),);
                           }*/
                      ,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        width: 152,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 251, 251, 251),
                          boxShadow: const [
                            BoxShadow(color: Color(0xf2000000), blurRadius: 2),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(40), // Image border
                              child: Column(
                                //  size: Size.fromRadius(48), // Image radius
                                children: [
                                  Image.asset('images/gangotri.jpg',
                                      height: 110,
                                      width: 150,
                                      fit: BoxFit.cover),
                                  const ListTile(
                                    title: Text(
                                      'Gangotri',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.teal),
                                    ),
                                    subtitle: Text(
                                        'Openning-22 jan 2023 Closing-22 jan 2023',
                                        style: TextStyle(
                                            fontSize: 12.0, color: Colors.red)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
//==================================================================================================
                    InkWell(
                      onTap: () {}
                      /*Navigator.push( context, 
                            //MaterialPageRoute(builder: (context) => Kd()),);
                           }*/
                      ,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        width: 152,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 251, 251, 251),
                          boxShadow: const [
                            BoxShadow(color: Color(0xf2000000), blurRadius: 2),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(40), // Image border
                              child: Column(
                                //  size: Size.fromRadius(48), // Image radius
                                children: [
                                  Image.asset('images/Yamunotri.jpg',
                                      height: 110,
                                      width: 150,
                                      fit: BoxFit.cover),
                                  const ListTile(
                                    title: Text(
                                      'Yamunotri',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.teal),
                                    ),
                                    subtitle: Text(
                                        'Openning-22 jan 2023 Closing-22 jan 2023',
                                        style: TextStyle(
                                            fontSize: 12.0, color: Colors.red)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
//================================================================================
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "About Char Dham Yatra 2022",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22.0, right: 22.0, bottom: 25.0),
                child: Text(
                  "Uttarakhand is known as Dev Bhoomi (Land of Gods), as it is the land of great pilgrimages, sacred temples and places, which attracts millions of pilgrims and spiritual seekers to get enlightenment. The pilgrimage of 4 Dhams located in Garhwal region are considered the most sacred places in India: Badrinath, Kedarnath, Gangotri and Yamunotri.These four ancient temples also marks the spiritual source of four sacred rivers as well: River Yamuna (Yamunotri), River Ganga or Ganges (Gangotri), River Mandakini (Kedarnath) and River Alaknanda (Badrinath).",
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ));
    }
  }
}
