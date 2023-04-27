import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/WelcomeMobile.dart';
import 'package:nasa_kita/responsive.dart';

class Welcome extends StatefulWidget {

 Welcome({Key? key }) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin {
late AnimationController _controller;
late Animation<double> _animation;

 @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 1, end: 0.96).animate(_controller);
  }

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
          body: 
          SingleChildScrollView(
              child: SafeArea(
            child: Responsive(
              tablet: Column(
                children: [
           Text("sdsd")
                ],
              ),
              mobile: WelcomeMobile(),
            ),
          )),
        ));
  }

  }
