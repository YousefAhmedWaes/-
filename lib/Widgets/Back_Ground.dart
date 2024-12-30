import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myproject/Screens/Login.dart';
import 'package:myproject/Widgets/Back_Ground.dart';

class BackGround extends StatelessWidget {
  BackGround({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
       body: Center(
        child: Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: SvgPicture.asset(
            "assets/background2.svg",
            width: 360.53,
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: SvgPicture.asset(
            "assets/background1.svg",
            width: 295.53,
          ),
        ),
      ],
        ),
    ),
    );
  }
}
