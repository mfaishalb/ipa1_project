import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpedia/screen/screens.dart';
import 'package:provider/provider.dart';
import 'package:foodpedia/config/provider.dart';
import 'config/imagecarousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'loginScreen/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent),
  );
  runApp(ChangeNotifierProvider(
    create: (context) => EventProvider(),
    child: MaterialApp(
      title: "FoodPedia",
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(51,52,60, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity),
    ),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 0),
            child: CarouselSlider(
              items: const [
                MyImageView('assets/images/logo.png'),
                MyImageView('assets/images/3.png'),
                MyImageView('assets/images/22.png'),
                MyImageView('assets/images/21.png'),

              ],
              options: CarouselOptions(
                height: 285.0,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlay: true,
                enableInfiniteScroll: true,
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 10, right: 70, top: 90, bottom: 0),
              child: Text("Welcome to Foodeology!",
                  style: TextStyle(
                      fontFamily: 'Rosmatika', fontSize: 24, color: Colors.white))),
          const Padding(
              padding: EdgeInsets.only(left: 25, right: 40, top: 10, bottom: 0),
              child: Text(
                  "Aplikasi Karya XII RPL 2 Kelompok 4 Besar yang bekerja sama dengan XII IPA 1",
                  style: TextStyle(
                    fontFamily: 'Volkom',
                    fontSize: 16,
                    color: Colors.white,
                  ))),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(190,156,117, 1)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 20)),
                    fixedSize: MaterialStateProperty.all(const Size(320, 55)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(color: Colors.white))
                            )
                            ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'Rosmatika', fontSize: 24, color: Colors.white),
                ),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => daftar())),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(190,156,117, 1)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 24)),
                  fixedSize: MaterialStateProperty.all(const Size(320, 55)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: const BorderSide(color: Colors.white)))),
              child: const Text(
                'Daftar',
                style: TextStyle(
                  fontFamily: 'Rosmatika',
                  fontSize: 24,
                ),
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  Login())),
            ),
          ),
        ],
      ),
    );
  }
}