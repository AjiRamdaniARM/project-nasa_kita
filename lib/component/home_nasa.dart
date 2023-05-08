import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/HomeMobile.dart';
import 'package:nasa_kita/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Home extends StatefulWidget {
  @override
  State<Home> createState() => _Home();
  

}

class _Home extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(body: SingleChildScrollView(
        child: SafeArea(child: Responsive( tablet:Container(
          
        ) ,mobile: HomeMobile(),)),
      ),),
    );
  }
}
