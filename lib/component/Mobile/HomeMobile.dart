
import 'package:flutter/material.dart';
import 'package:nasa_kita/component/desktop/profile.dart';

class HomeMobile extends StatelessWidget {

 HomeMobile({Key? key, required this.nama, required this.alamat}) : super(key: key);

  String nama;
  String alamat;




  @override
  Widget build(BuildContext context) {
    return 
    Center(child: Stack(children: [


            // element widget banner nasa
Container(
      width: MediaQuery.of(context).size.width ,
        height: 241,
        decoration: const BoxDecoration(
          gradient : LinearGradient(
          begin: Alignment(0.008092748932540417,0.7584704160690308),
          end: Alignment(-0.7584704160690308,0.025577083230018616),
          colors: [Color.fromRGBO(173, 255, 47, 1),Color.fromRGBO(104, 241, 93, 1),Color.fromRGBO(25, 225, 148, 1)]
        ),
  ),
      child:
  
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          width: MediaQuery.of(context).size.width,
          child: Stack(children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                InkWell(onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(nama: nama,alamat:alamat ,)))
                }, child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  alignment: Alignment.topLeft,
                  child: Image.asset('assets/image/nasa_kita.png', width: 90),
                ) ,),
               
                Expanded(
                    child: Container(
                  child: Stack(children: [
                    FittedBox(
                      child: Stack(children: [
                        Container(
                          child: Text('Halo,' + nama,
                              style: TextStyle(
                                  fontFamily: 'MT_BOLD',
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        Container(
                          width: 224,
                          margin: EdgeInsets.only(top: 23),
                          child: Text(
                            'Yuk capai kinerja pengolaan sampah,dengan cara menabung sampah',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 13,
                                color: Colors.white,
                                letterSpacing:
                                    0 /*pesrcentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal),
                           
                          ),
                        ),
                       
                        Container(
                          width: 224,
                          margin: EdgeInsets.only(top: 100),
                       
                          child:
                          Stack(children: [
                            FittedBox(child:Container(child: Text(
                            '20,355,120.83',
                            style: TextStyle(
                                fontFamily: 'MT_BOLD',
                                fontSize: 24,
                                color: Colors.white,
                                letterSpacing:
                                    0 /*pesrcentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal),
                           
                          ),) ,),

                          FittedBox(child:Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                            'Data Timbulan Sampah di indonesia',
                            style: TextStyle(
                                fontFamily: 'MT_BOLD',
                                fontSize: 12,
                                color: Colors.white,
                                letterSpacing:
                                    0 /*pesrcentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal),
                           
                          ), ) ,)
 


                          ],)
                         
                        ),
                        
                      ]),
                    )
                  ]),
                )),
              ],
            ),
          
      
    ])
      ) ]
      )
      ),
    Center(child: Container(child: Stack(children: [
      Row(children: [
        Container(
          child: null,
        )
      ],)
    ]),),)
    
    ],),);
    
  }
}