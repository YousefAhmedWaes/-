import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myproject/Screens/Login.dart';
import 'package:myproject/Screens/Password.dart';
import 'package:myproject/Widgets/Back_Ground.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Positioned(child: BackGround(),),
            Positioned(
              left: 172,
              top: 215,
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),

                child: ClipOval(
                  child: Image.asset(
                    "assets/image.png",
                  ),
                ),
              ),
            ),
            Positioned(
                left: 125,
                top: 350,
                child: Text("Hello, Romina!!",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
            ),
            Positioned(
                left: 145,
                top: 430,
                child: Text("Type your password",
                  style: TextStyle(fontSize: 19,),),
            )

          ],
        ),
      ),
    );
  }
}
