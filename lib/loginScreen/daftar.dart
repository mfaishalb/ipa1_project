import 'package:flutter/material.dart';
import 'package:foodpedia/config/imagecarousel.dart';
import '/config/palette.dart';
import '/screen/screens.dart';

class daftar extends StatefulWidget {
  daftar({Key? key}) : super(key: key);

  @override
  State<daftar> createState() => _daftarState();
}

class _daftarState extends State<daftar> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Palette.primaryColor,
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
        height: 350,
        padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
        decoration: const BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 250,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildinput(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        height: 550,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/login.png",
              width: 270,
            ),
            Text(
              "Selamat Datang Kembali !",
              style: TextStyle(
                fontFamily: 'Rosmatika',
                fontSize: 18,
                color: Palette.primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Silahkan Login Terlebih Dahulu",
                style: TextStyle(
                  fontFamily: 'Volkom',
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            ),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text('Email'),
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            ),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.lock)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(125, 107, 87, 1)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 20)),
                    fixedSize: MaterialStateProperty.all(const Size(500, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: const BorderSide(color: Colors.white)))),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'Rosmatika',
                      fontSize: 20,
                      color: Colors.white),
                ),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavScreen())),
              ),
            )
          ],
        ),
      ),
    );
  }
}
