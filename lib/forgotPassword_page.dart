// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 300),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
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
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Email Adress"),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  //   Container(
                  // width: MediaQuery.of(context).size.width *0.5,
                  // child: TextFormField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     hintText: "Confirm Password"
                  //   ),
                  // )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff545F75),
                              shape: StadiumBorder()),
                          child: Text("Submit")))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
