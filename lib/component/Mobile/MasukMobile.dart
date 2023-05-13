import 'package:flutter/material.dart';
import 'package:nasa_kita/component/desktop/Welcome.dart';
import 'package:nasa_kita/component/desktop/daftar.dart';
import 'package:nasa_kita/component/home_nasa.dart';
class MasukMobile extends StatefulWidget {
 MasukMobile({
    Key? key,
  }) : super(key: key);



  @override
  State<MasukMobile> createState() => _MasukMobileState();
}

class _MasukMobileState extends State<MasukMobile> {
  final _formKey = GlobalKey<FormState>();
final nama = TextEditingController();
final katasandi = TextEditingController();
final data50 = 'Belum punya data di form masuk';


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
            child: Text('Masuk', style: TextStyle(
            fontFamily: 'Mt_Bold',fontSize: 24
          ),),),
        ),

Container(
        margin: EdgeInsets.all(1),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: nama,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 4, 218, 0),
                            
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: ' Nama',
                      hintText: 'Masukkan Nama',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong yaa';
                      }
                      return null;
                    },
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: katasandi,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 168, 28),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Kata Sandi',
                      hintText: 'Masukkan Kata Sandi',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong yaa';
                      }
                      return null;
                    },
                  ),
                ),
            
            
                 Container(
      width: 340,
      height: 21,
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Belum punya akun?', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(102, 101, 101, 1),
        fontFamily: 'Poppins',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
      
     InkWell(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Daftar()))
      },
      child:  Container(

        child: Text('Buat akun baru', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(2, 148, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),)
        ]
      )
    ),
                InkWell(
                    onTap: (() {
                      if(_formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(namaUser: nama.text, alamatUser: data50,),));
                      }
                    }),
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
                          "Masuk Akun",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Poppins-Bold'),
                        ),
                      ),
                    ))
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

