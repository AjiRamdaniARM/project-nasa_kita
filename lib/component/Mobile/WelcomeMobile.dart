

import 'package:flutter/material.dart';
import 'package:nasa_kita/component/desktop/Welcome.dart';
import 'package:nasa_kita/component/desktop/masuk.dart';
import 'package:nasa_kita/component/home_nasa.dart';
import 'package:nasa_kita/responsive.dart';



class WelcomeMobile extends StatefulWidget {
  const WelcomeMobile({Key? key}) : super(key: key)  ;
 


  @override
  _WelcomeMobileState createState() => _WelcomeMobileState();
}



class _WelcomeMobileState extends State<WelcomeMobile> {
    bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    
    return
   
        Center(
        heightFactor:1.9,
        child:  
        
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         
      children: [
                    FittedBox(
                      child: Container(
                   alignment: Alignment.center,
               
                      margin: EdgeInsets.only(left: 10, right: 10,),
                        width: 256,
                        child: Text('Selamat Datang',
                        textAlign: TextAlign.center, 
                        style: TextStyle(
                          fontFamily: 'Cookie', 
                          fontSize: 80,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          height: 0.7,),),
                      ),
                    ),
                    // widget text
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Stack(children: [      

                        Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         
                          children: [

                            // button masuk
  InkWell(
          onTap:() => {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Masuk()))
          },
         
          child: Container(
               margin: EdgeInsets.all(10),
             width: 300,
        height: 66,
        decoration: BoxDecoration(
           boxShadow:[ 
               BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2 ), //color of shadow
                  spreadRadius: 1, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 5), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
               ),
               //you can set more BoxShadow() here
              ],
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(42),
            topRight: Radius.circular(42),
            bottomLeft: Radius.circular(42),
            bottomRight: Radius.circular(42),
          ),
            border : Border.all(
          color: Colors.white,
          width: 1,
        ),
     gradient : LinearGradient(
          begin: Alignment(1.093485951423645,0.015419178642332554),
          end: Alignment(-0.015419179573655128,0.041343219578266144),
          colors: [Color.fromRGBO(0, 255, 47, 1),Color.fromRGBO(104, 249, 51, 1)]
        ),
  
        ),
        
            child: Center(
              child: Text('Masuk', style: TextStyle(color:  Colors.white ),),
            ),
          )
        ),

        // button daftar
         InkWell(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Masuk()))
          },
         
          child: Container(
            margin: EdgeInsets.all(10),
 
             width: 300,
        height: 66,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(42),
            topRight: Radius.circular(42),
            bottomLeft: Radius.circular(42),
            bottomRight: Radius.circular(42),
          ),
            border : Border.all(
          color: Colors.white,
          width: 1,
        ),
        ),
        
            child: Center(
              child: Text('Daftar', style: TextStyle(color:  Colors.white ),),
            ),
          )
        ),

        Container(
          margin: EdgeInsets.all(30),
          width: 86,
          child: Image.asset("assets/image/nasa_kita.png"),
        )
                            
                          ],
                        )
        
      
        
        ]),)

                  ]),);

  }
}
