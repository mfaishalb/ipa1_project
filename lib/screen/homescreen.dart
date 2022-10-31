import '/screen/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
        ],
      ),
      // =============================
      // Ini gak usah dipake
      // =============================
      // bottomNavigationBar: Padding(
      //     padding: const EdgeInsets.fromLTRB(0, 30, 350, 0),
      //     child: IconButton(
      //         color: Colors.black,
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) => const BottomNavScreen()));
      //         },
      //         icon: const Icon(Icons.arrow_back))),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Foodeology',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontFamily: 'Rosmatika',
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Mau Makan Apa Hari Ini ?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Volkom',
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                const Text(
                  'Kami menyediakan Berbagai jenis Makanan siap saji yang lezat untuk anda!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontFamily: 'Volkom',
                  ),
                ),
              ],
            )
          ],
        ),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
        height: 240,
      ),
    );
  }
}
