import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/DaftarMobile.dart';
import 'package:nasa_kita/component/Mobile/MasukMobile.dart';
import 'package:nasa_kita/responsive.dart';

class Daftar extends StatefulWidget {
   Daftar({super.key});
final _formKey = GlobalKey<FormState>();
final nama = TextEditingController();
final katasandi = TextEditingController();
  @override
  State<Daftar>createState() => _DaftarState();
}

class _DaftarState extends State<Daftar>{
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
      mobile: DaftarMobile(),))
      ),
    );
  }
}