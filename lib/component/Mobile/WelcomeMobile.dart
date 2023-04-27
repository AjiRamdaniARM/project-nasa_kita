

import 'package:flutter/material.dart';
import 'package:nasa_kita/component/desktop/Welcome.dart';
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
        heightFactor: 3,
        child:  
        
        Column(
      children: [
                    FittedBox(
                      child: Container(
                        padding: EdgeInsets.all(2),
                        width: 226,
                        child: Text('Selamat Datang',
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                          fontFamily: 'Cookie', 
                          fontSize: 90,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          height: 0.7,),),
                      ),
                    ),
                    // widget text
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Stack(children: [      

                        Column(
                          children: [

                            // button masuk
  InkWell(
          onTap:null,
         
          child: Container(
             width: 288,
        height: 56,
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
              child: Text('Masuk', style: TextStyle(color:  Colors.white ),),
            ),
          )
        ),

        // button daftar
         InkWell(
          onTap:null,
         
          child: Container(
     
             width: 288,
        height: 56,
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
                            
                          ],
                        )
        
      
        
        ]),)

                  ]),);

  }
}
