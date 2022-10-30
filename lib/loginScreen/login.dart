import 'package:flutter/material.dart';
import 'package:foodpedia/config/imagecarousel.dart';
import '/config/palette.dart';
import '/screen/screens.dart';



class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:  Colors.white,
      body: CustomScrollView(
         physics: const ClampingScrollPhysics(),
        slivers: <Widget>[
                    _buildHeader(screenHeight),
                    _buildinput(screenHeight),
        ],
      ),

    );
  }
 SliverToBoxAdapter _buildHeader(double screenHeight) {
  return SliverToBoxAdapter(
      child: Container(
        height: 550,
        padding: EdgeInsets.fromLTRB(10,100,10,10) ,
        decoration: const BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
Container(         
  margin: EdgeInsets.all(0),
  child: Image.asset("assets/images/signup.png",
  height: 200,
  ),
                ),

              ],
            ),
Container(
  padding: EdgeInsets.fromLTRB(20,70,20,20),
  child: Text("Selamat Datang di Foodeolgy App",
  style: TextStyle(
     fontFamily: 'Rosmatika', fontSize: 24, color: Colors.white 
  ),
  ),
),
Container(
  padding: EdgeInsets.fromLTRB(20,0,20,20),
  child: Text("Silahkan buat akun untuk melanjutkan Aplikasi",
  style: TextStyle(
     fontFamily: 'Volkom', fontSize: 16, color: Colors.white
  ),
  ),
)
          ],
        ),
      ),
      
    );
    
  }
 SliverToBoxAdapter _buildinput(double screenHeight){
  return SliverToBoxAdapter(
child: Container(
  padding: EdgeInsets.all(20),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
  padding: EdgeInsets.fromLTRB(20,0,20,10),
  child: Text("Nama Lengkap",
  style: TextStyle(
     fontFamily: 'Volkom', fontSize: 18, color: Palette.primaryColor,
  ),
  ),
),
SizedBox(
  height: 50,
  child:   TextField(
  
    decoration: InputDecoration( border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
  
     )
  
    
  
    ),
  
  ),
),
 Container(
  padding: EdgeInsets.fromLTRB(20,20,20,10),
  child: Text("Asal Sekolah",
  style: TextStyle(
     fontFamily: 'Volkom', fontSize: 18, color: Palette.primaryColor,
  ),
  ),
),
SizedBox(
  height: 50,
  child:   TextField(
  
    decoration: InputDecoration( border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
  
     )
  
    
  
    ),
  
  ),
),
Container(
  margin: EdgeInsets.fromLTRB(0,20,0,20),
  child:   ElevatedButton(
  
    
  
                  style: ButtonStyle(
  
                      backgroundColor: MaterialStateProperty.all<Color>(
  
                          const Color.fromRGBO(125,107,87, 1)),
  
                      textStyle: MaterialStateProperty.all(
  
                          const TextStyle(fontSize: 20)),
  
                      fixedSize: MaterialStateProperty.all(const Size(500, 50)),
  
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  
                          RoundedRectangleBorder(
  
                              borderRadius: BorderRadius.circular(20.0),
  
                              side: const BorderSide(color: Colors.white))
  
                              )
  
                              ),
  
                  child: const Text(
  
                    'Lanjut',
  
                    style: TextStyle(
  
                        fontFamily: 'Rosmatika', fontSize: 20, color: Colors.white),
  
                  ),
  
                  onPressed: () => Navigator.push(context,
  
                      MaterialPageRoute(builder: (context) => login2())),
  
                ),
)
    ],
  ),
),
  );
 }

 }
