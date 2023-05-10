import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/HomeMobile.dart';
import 'package:nasa_kita/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Home extends StatelessWidget {
  Home({required this.namaUser,required this.alamatUser,});

 
 String namaUser;
 String alamatUser;


  @override
  Widget build(BuildContext context) {

    final maxLines = 1;
    return Container(
       
      child: Scaffold(
        body: SingleChildScrollView(
        child: SafeArea(child: Responsive( tablet:Container(
          
        ) ,mobile: HomeMobile(nama: namaUser, alamat: alamatUser,),)),
      ),),
    );
  }
}
