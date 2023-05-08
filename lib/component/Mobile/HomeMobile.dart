import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMobile extends StatefulWidget {
 
   HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  String nama = "Aji Ramdani";

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width,
        height: 241,
        decoration: BoxDecoration(
          gradient : LinearGradient(
          begin: Alignment(0.008092748932540417,0.7584704160690308),
          end: Alignment(-0.7584704160690308,0.025577083230018616),
          colors: [Color.fromRGBO(173, 255, 47, 1),Color.fromRGBO(104, 241, 93, 1),Color.fromRGBO(25, 225, 148, 1)]
        ),
  ),
      child:Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
 textDirection: TextDirection.rtl,
        children: [
         SizedBox(child: Container(width: 80,alignment: Alignment.topLeft,child: Image.asset('assets/image/nasa_kita.png')),),
        //  nama ambil data dari database 
        FittedBox(
          child: Container(child: Text('Halo , ' + nama)),
        )
        ],
      ),
    );
  }
}