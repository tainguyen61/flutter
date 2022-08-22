import 'package:flutter/material.dart';

class ScreenSignUpPage extends StatefulWidget {
  const ScreenSignUpPage({Key? key}) : super(key: key);

  @override
  State<ScreenSignUpPage> createState() => _ScreenSignUpPageState();
}

class _ScreenSignUpPageState extends State<ScreenSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(120)),
                          color: Colors.red,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomLeft,
                              stops: [
                                0.1,
                                0.7
                              ],
                              colors: [
                                Colors.orange.shade800,
                                Colors.orange.shade600,
                              ])),
                      child: Center(
                          child: Image.asset(
                        'assets/images/logo.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ))),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          margin: EdgeInsets.only(right: 20, bottom: 20),
                          child: Text(
                            'Signup For Free',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.person),
                        hintText: "Fullname",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.phone),
                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.key),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(25.0)),
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Container(
                        height: 44.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.orangeAccent,
                              Colors.deepOrange
                            ]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: Text('SINGUP',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                        ),
                      )),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Already a member ? '),
                    Text('SIGNIN',style: TextStyle(color: Colors.deepOrange),),
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
