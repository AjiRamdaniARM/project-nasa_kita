import 'package:flutter/material.dart';
import '../animasi.dart';

class AnimasiMobile extends StatefulWidget {
  const AnimasiMobile({Key? key}) : super(key: key);

  @override
  _AnimasiMobile createState() => _AnimasiMobile();
}

class _AnimasiMobile extends State<AnimasiMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 210),
          child: Image.asset('assets/image/nasa_kita.png',
              width: 230, fit: BoxFit.fill),
        )
      ],
    );
  }
}
