import 'package:flutter/material.dart';
import 'package:nasa_kita/component/desktop/profile.dart';

class HomeMobile extends StatelessWidget {

 HomeMobile({Key? key, required this.nama, required this.alamat}) : super(key: key);

  String nama;
  String alamat;




  @override
  Widget build(BuildContext context) {

    // url root
    //   Future openBrowserURL({
    //   required String url,
    //   bool inApp = false,
    // }) async {
    //   if (await canLaunch(url)) {
    //     await launch(
    //       url,
    //       forceSafariVC: inApp,
    //       forceWebView: inApp,
    //       enableJavaScript: true,
    //     );
    //   }
    //  }

    final data1 = '82.5';
    final data2 = '92.5';

    return 
    Container(child: Stack(children: [


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
    Center(child: Container(

      // element widget for fitur 
      margin: EdgeInsets.only(top: 250),
      child: Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
FittedBox(
      child: Container(
alignment: Alignment.topLeft,
        margin: EdgeInsets.all(10),
        child: 
      Text("DATA TABUNG SAMPAH", style: TextStyle(fontFamily: 'MT_BOLD', fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green,),), 
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
           width: 180,
        height: 89,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(0, 207, 95, 0.6000000238418579),
  ),
  child:
  Column(children: [
     Container(
    alignment: Alignment.topCenter,
    margin: EdgeInsets.all(10),
    child:Text('Organik', style: TextStyle(fontFamily: 'poppins', color: Colors.white),),),
    Container(child: Text(data1 + "Kg", style: TextStyle(fontFamily: "MT_BOLD", fontSize: 20, color: Colors.white),),)
  ],)
 
  
        ),
        Container(
           width: 180,
        height: 89,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      color : Color.fromRGBO(0, 207, 95, 0.6000000238418579),
  ),
  child: 
    Column(children: [
     Container(
    alignment: Alignment.topCenter,
    margin: EdgeInsets.all(10),
    child:Text('Non Organik', style: TextStyle(fontFamily: 'poppins', color: Colors.white),),),
    Container(child: Text(data2 + "Kg", style: TextStyle(fontFamily: "MT_BOLD", fontSize: 20, color: Colors.white),),)
  ],)
  ,
        )
      ],
    ),
InkWell(
  onTap: null,
  child: 
   Container(
        width: 370,
        height: 61,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(-1,4),
          blurRadius: 2
      )],
      color : Color.fromRGBO(255, 255, 255, 1),
      border : Border.all(
          color: Color.fromRGBO(0, 207, 95, 0.6000000238418579),
          width: 1,
        ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.all(10),
        child: Image.network('https://cdn.icon-icons.com/icons2/1378/PNG/512/usertrash_92829.png', width: 40,),),
      Container(
        margin: EdgeInsets.all(20),
        child: Text('Nabung Sampah',style: TextStyle(color: Colors.green),),)
    ],
  ),
      )
  ,
),
InkWell(
  // onTap: () async {
  //   final spnsn = 'https://sipsn.menlhk.go.id/sipsn/';
  //   openBrowserURL(url: spnsn, inApp: true);

  // },
  child: 
   Container(
        width: 370,
        height: 61,
        // margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(-1,4),
          blurRadius: 2
      )],
      color : Color.fromRGBO(255, 255, 255, 1),
      border : Border.all(
          color: Color.fromRGBO(0, 207, 95, 0.6000000238418579),
          width: 1,
        ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.all(10),
        child: Image.network('https://sipsn.menlhk.go.id/sipsn/assets/img/logo_klhk_sipsn_tight.png', width: 80,),),
      Container(
        margin: EdgeInsets.all(20),
        child: Text('Lihat data lebih akurat',style: TextStyle(color: Colors.green),),)
    ],
  ),
      )
  ,
),

Container(
  child: Column(
    children: [
      Container(
       alignment: Alignment.topLeft,
       margin: EdgeInsets.all(20),
        child: Text('Rekomendasi video pengolahan sampah', style: TextStyle(fontFamily: 'MT_BOLD', fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),),
      ),
      Container(
       alignment: Alignment.bottomCenter,
       margin: EdgeInsets.only(top: 80),
        child: Text('Belum ada video tersedia', style: TextStyle(fontFamily: 'MT_BOLD', fontWeight: FontWeight.bold, color: Colors.black),),
      ),
    ],
  ),
)


       
      ],)
    ]),),
    
    ),

    
    
    ],),);
    
  }
}