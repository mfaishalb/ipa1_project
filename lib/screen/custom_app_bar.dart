import 'package:flutter/material.dart';
import 'package:foodpedia/screen/screens.dart';
import '/config/palette.dart';
import '/screen/screens.dart';

class CustomAppBar2 extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.person_outline_sharp),
          iconSize: 28.0,
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  login2()),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
class CustomAppbar1 extends StatelessWidget with PreferredSizeWidget {
  const CustomAppbar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.person_outline_sharp, color:Colors.white),
          iconSize: 28.0,
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  login2()),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
