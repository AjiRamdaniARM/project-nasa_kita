import 'package:flutter/material.dart';
class MasukMobile extends StatefulWidget {
  const MasukMobile({super.key});

  @override
  State<MasukMobile> createState() => _MasukMobileState();
}

class _MasukMobileState extends State<MasukMobile> {
  @override
  Widget build(BuildContext context) {
    return Center( 
      child:  Stack(children: [Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
        width: 450,
        height: MediaQuery.of(context).size.height ,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      ),
      Container(
        alignment: Alignment.topCenter,
        child: Image.asset("assets/image/nasa_kita.png", width: 270,),)
      ],)
    );
  }
}