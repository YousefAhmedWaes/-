import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myproject/Screens/Login.dart';
import 'package:myproject/Widgets/BackGround.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 210,
              right: 50,
              left: 50,
              child:  Container(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/porson.svg",
                width: 90,
                height: 90,
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
