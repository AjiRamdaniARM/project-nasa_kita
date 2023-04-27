import 'package:flutter/material.dart';
import 'package:nasa_kita/component/desktop/Welcome.dart';
import 'package:nasa_kita/component/home_nasa.dart';
import 'Mobile/AnimasiMobile.dart';
import 'dart:async';
import '../responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  void initState() {
    super.initState();
    AnimasiStart();
  }

// durasi animasi
  AnimasiStart() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Welcome()) );
    });
  }

  @override
  Widget build(BuildContext context) {
    final maxLines = 1;
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
          bottomNavigationBar: Container(
              height: 150,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: FittedBox(
                      child: Text(
                        "Semua hak cipta dilindungi oleh",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "poppins",
                            fontSize: 12,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "ARI DEV",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "impact",
                          fontSize: 36,
                          letterSpacing: 1),
                    ),
                  )
                ],
              )),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Responsive(
                tablet: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      heightFactor: 2,
                      child: Image.asset('assets/image/nasa_kita.png',
                          width: 430, fit: BoxFit.fill),
                    )
                  ],
                ),
                mobile: AnimasiMobile(),
              ),
            ),
          )),
    );
  }
}

    // Add this line.
    // return Container(
    //   decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight,
    //           colors: [
    //         Color.fromRGBO(173, 255, 47, 1),
    //         Color.fromRGBO(104, 241, 93, 1),
    //         Color.fromRGBO(25, 225, 148, 1)
    //       ])),
    //   child: Scaffold(
    //       backgroundColor: Colors.transparent,
    //       bottomNavigationBar: Container(
    //           height: 150,
    //           alignment: Alignment.center,
    //           child: Column(
    //             children: [
    //               Container(
    //                 margin: EdgeInsets.only(left: 10, right: 10),
    //                 child: FittedBox(
    //                   child: Text(
    //                     "Semua hak cipta dilindungi oleh",
    //                     style: TextStyle(
    //                         color: Colors.white,
    //                         fontFamily: "poppins",
    //                         fontSize: 12,
    //                         letterSpacing: 1),
    //                   ),
    //                 ),
    //               ),
    //               FittedBox(
    //                 child: Text(
    //                   "ARI DEV",
    //                   style: TextStyle(
    //                       color: Colors.white,
    //                       fontFamily: "impact",
    //                       fontSize: 36,
    //                       letterSpacing: 1),
    //                 ),
    //               )
    //             ],
    //           )),
    //       body: SingleChildScrollView(
    //         child: SafeArea(
    //           child: Responsive(
    //             tablet: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Center(
    //                   heightFactor: 2,
    //                   child: Image.asset('assets/image/nasa_kita.png',
    //                       width: 430, fit: BoxFit.fill),
    //                 )
    //               ],
    //             ),
    //             mobile: AnimasiMobile(),
    //           ),
    //         ),
    //       )),
    // );
