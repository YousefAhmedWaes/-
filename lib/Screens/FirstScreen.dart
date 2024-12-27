import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myproject/Screens/CreatAccount.dart';
import 'package:myproject/Screens/Login.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          home: FirstScreen(),
        );
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(0, 0),
              child: Container(
                width: 0,
                height: 200,
              ),
            ),

            Container(
              width: 134,
              height: 134,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.white, Colors.white],
                  stops: [0.2, 0.5],
                ),
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
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/shoop1.svg",
                width: 90,
                height: 90,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Shoppe",
              style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 15),
            Text(
              "Beautiful eCommerce UI Kit",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),

            Text(
              "for your online store",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(400, 70)),
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreatAccount()),
                );
              },
              child: Text(
                "Let's get started",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal, color: Colors.white),
              ),

            ),
            SizedBox(height: 30),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "I already have an account",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/Button.svg",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}