import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/HomeMobile.dart';
import 'package:nasa_kita/component/desktop/Welcome.dart';
import 'package:nasa_kita/component/desktop/daftar.dart';
import 'package:nasa_kita/component/home_nasa.dart';
class ProfileMobile extends StatelessWidget {
 ProfileMobile({
    Key? key,required this.nama, required this.alamat
  }) : super(key: key);

String nama;
String alamat;


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
  ),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FittedBox(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Text('Profile', style: TextStyle(
            fontFamily: 'Mt_Bold',fontSize: 24
          ),),),
        ),

Container(
        margin: EdgeInsets.all(1),
        child: Form(
           
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child:      // Figma Flutter Generator Group1Widget - GROUP
      Container(
      width: 350,
      height: 55,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 340,
        height: 55,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
            bottomLeft: Radius.circular(31),
            bottomRight: Radius.circular(31),
          ),
      color : Color.fromRGBO(76, 255, 94, 0.4099999964237213),
  )
      )
      ),Positioned(
        top: 17,
        left: 36,
        child: Text(nama, textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(13, 118, 18, 1),
        fontFamily: 'Poppins',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
                ),
                 Padding(
                  padding: EdgeInsets.all(15),
                  child:       // Figma Flutter Generator Group1Widget - GROUP
      Container(
      width: 350,
      height: 55,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 340,
        height: 55,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
            bottomLeft: Radius.circular(31),
            bottomRight: Radius.circular(31),
          ),
      color : Color.fromRGBO(76, 255, 94, 0.4099999964237213),
  )
      )
      ),Positioned(
        top: 17,
        left: 36,
        child: Text(alamat, textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(13, 118, 18, 1),
        fontFamily: 'Poppins',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
                ),
            
            
                 
                InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(namaUser:nama , alamatUser:alamat)))
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 327,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.5),
                          topRight: Radius.circular(30.5),
                          bottomLeft: Radius.circular(30.5),
                          bottomRight: Radius.circular(30.5),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment(1.262939214706421,-0.0032311950344592333),
          end: Alignment(0.0032311961986124516,0.047750022262334824),
          colors: [Color.fromRGBO(5, 255, 0, 1),Color.fromRGBO(4, 206, 36, 1)]
                        )
                      ),
                      child: Center(
                        child: Text(
                          "Keluar Akun",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Poppins-Bold'),
                        ),
                      ),
                    )),
                          // Figma Flutter Generator Group9Widget - GROUP
      Container(
        margin: EdgeInsets.all(20),
      width: 283,
      height: 61,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 283,
      height: 17,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 283,
      height: 17,
      
      child: Stack(
        children: <Widget>[
          Center(
    
        child: Text('Copyright -2023 Development. All rights reserved', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 8,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 0,
        left: 27,
        child: Text('© ', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 8,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),Positioned(
        top: 31,
        left: 105,
        child: Text('Term of Service', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(11, 140, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 8,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 49,
        left: 108,
        child: Text('Privacy Policy', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(11, 140, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 8,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
              ],
            )),
      )
        
      ],
    ),
  ),
      ),
       Container(
      
        alignment: Alignment.topCenter,
        child:Stack(children: [
           
        Container(height: 230,
            child:  Image.asset("assets/image/nasa_kita.png", width: 270,),),

            FittedBox(

            child: 
            InkWell(
              onTap: () => 
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Welcome() )),
              child: Container(
          margin: EdgeInsets.only(left: 105, top: 35),
              child: Text('Keluar', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Poppins',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.bold,
        height: 1
      ),)), )
            
           
          ),


        ],)
        
        ,)
      ],)
    );
  }
}

