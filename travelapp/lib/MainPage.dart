import 'package:flutter/material.dart';
// import 'package:travel_app/theme.dart';
//import 'HomePage.dart';
import 'custom-bottom-nav.dart';
import 'DetailPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
            child: PageView(
          children: [
            DetailPage(),
          ],
        )),
        Align(alignment: Alignment.bottomCenter, child: CustomNavbar())
      ],
    );
  }
}
