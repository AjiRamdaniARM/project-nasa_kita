import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/WelcomeMobile.dart';
import 'package:nasa_kita/component/desktop/daftar.dart';
import 'package:nasa_kita/component/desktop/masuk.dart';
import 'package:nasa_kita/responsive.dart';

class Welcome extends StatefulWidget {

 Welcome({Key? key }) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin {
late AnimationController _controller;
late Animation<double> _animation;

 @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 1, end: 0.96).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(173, 255, 47, 1),
              Color.fromRGBO(104, 241, 93, 1),
              Color.fromRGBO(25, 225, 148, 1)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: 
          SingleChildScrollView(
              child: SafeArea(
            child: Responsive(
              tablet: Container(
                margin: EdgeInsets.all(200),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [     
                    
                    FittedBox(
            child: Container(

               width:450,
              child: Text('Selamat Datang', textAlign: TextAlign.center, 
                        style: TextStyle(
                          fontFamily: 'Cookie', 
                          fontSize: 130,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          height: 0.7,)),
            ),
           ),
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Daftar()))
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
        ,])
      

               
              ),
              mobile: WelcomeMobile(),
            ),
          )),
        ));
  }

  }
