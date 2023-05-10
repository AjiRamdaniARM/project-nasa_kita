

import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/ProfileMobile.dart';
import 'package:nasa_kita/Responsive.dart';


class Profile extends StatelessWidget {
  Profile({
    Key? key,required this.nama, required this.alamat
  }) : super(key: key);

String nama;
String alamat;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(173, 255, 47, 1),
              Color.fromRGBO(104, 241, 93, 1),
              Color.fromRGBO(25, 225, 148, 1)
        ])
      ),
      child: Scaffold(backgroundColor: Colors.transparent,
      body: SafeArea(child: Responsive(tablet: Container(
      child: Text('Hello World'),
      ),
      mobile: ProfileMobile(nama: nama,alamat: alamat,),))
      ),
    );
  }
}