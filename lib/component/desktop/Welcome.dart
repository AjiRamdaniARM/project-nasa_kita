import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/WelcomeMobile.dart';
import 'package:nasa_kita/responsive.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(173, 255, 47, 1),
              Color.fromRGBO(104, 241, 93, 1),
              Color.fromRGBO(25, 225, 148, 1)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: SafeArea(
            child: Responsive(
              tablet: Column(
                children: [Text('Welcome')],
              ),
              mobile: WelcomeMobile(),
            ),
          )),
        ));
  }
}
