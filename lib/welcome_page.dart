// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:harry_kitchen/login_page.dart';
import 'package:harry_kitchen/register_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff545F75),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/images/makanan.png"),
                      fit: BoxFit.fill),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        "Hey There!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Enjoy the process of learning to cook!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => LoginPage())),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff545F75), shape: StadiumBorder()),
                        child: Text("Login"),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage())),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, shape: StadiumBorder()),
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.grey[400]),
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
