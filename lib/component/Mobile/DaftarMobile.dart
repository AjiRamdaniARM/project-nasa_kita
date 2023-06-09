
import 'package:flutter/material.dart';
import 'package:nasa_kita/component/Mobile/HomeMobile.dart';
import 'package:nasa_kita/component/desktop/Welcome.dart';
import 'package:nasa_kita/component/desktop/masuk.dart';
import 'package:nasa_kita/component/home_nasa.dart';
class DaftarMobile extends StatefulWidget {
 DaftarMobile({
    Key? key,
  }) : super(key: key);



  @override
  State<DaftarMobile> createState() => _DaftarMobileState();
}

class _DaftarMobileState extends State<DaftarMobile> {
  final data = '';
  final data1 = '';
  final _formKey = GlobalKey<FormState>();
final namadaftar = TextEditingController();
final katasandidaftar = TextEditingController();
final alamatdaftar = TextEditingController();
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
            child: Text('Daftar', style: TextStyle(
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
                    controller: namadaftar,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 4, 218, 0),
                            
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: ' Nama Lengkap',
                      hintText: 'Masukkan Nama Anda',
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
                    controller: katasandidaftar,
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
                      hintText: 'Masukkan Kata Sandi Yang Kuat',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Kata Sandi tidak boleh kosong yaa';
                      }
                      return null;
                    },
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: alamatdaftar,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 168, 28),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Alamat Lengkap',
                      hintText: 'Masukkan Alamat Anda',
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
      width: 330,
      height: 21,
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
    
        child: Text('Punya Akun?', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(102, 101, 101, 1),
        fontFamily: 'Poppins',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
      


      Expanded(child: InkWell(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Masuk()))
      },
      child:  Container(
 margin: EdgeInsets.only(left: 70),

        child: Text('Masuk Akun', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(2, 148, 0, 1),
        fontFamily: 'Poppins',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),), ),
    
        ]
      )
    ),
                InkWell(
                    onTap: () => {
                      if(_formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(namaUser: namadaftar.text, alamatUser: alamatdaftar.text,),))
                      }
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
                          "Daftar Akun",
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
  onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()))
      },
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

