import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myproject/Screens/Login.dart';
import 'package:myproject/Widgets/Back_Ground.dart';
import 'package:myproject/Screens/Password.dart';
import 'package:myproject/Widgets/Hello.dart';



class Login extends StatefulWidget {
  const  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,

      body: Center(
        child: Stack(

          children: [
         Positioned(child: BackGround(),),
            Positioned(

         right: 0,
              top: 300,
              child: SvgPicture.asset(
                "assets/login1.svg",
                width: 80.53,

              ),
            ),
            Positioned(
              left: 20,
              top: 490,
              child: Text("Login",style: TextStyle(fontSize: 58,fontWeight: FontWeight.bold),
              ),
            ),

            Positioned(
              right: 0,

              top: 560,

              child: SvgPicture.asset(
                "assets/login2.svg",
                width: 300.53,

              ),
            ),
            Positioned(
              left: 20,
              top: 570,
              child: Row(
                children: [
                  Text(
                    "Good to see you back!",
                    style: TextStyle(fontSize: 21),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
            ),

            Positioned(
              bottom:240 ,
              left: 20,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom:140,
              left: 20,
              width: 400,
              child:
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(Size(400, 70)),
                backgroundColor: WidgetStateProperty.all(
                    Colors.blueAccent),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Password()),
                );
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 22,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            ),

            Positioned(
                left: 20,
                top: 835,
                width: 400,
                child:
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),

    );

  }
}
