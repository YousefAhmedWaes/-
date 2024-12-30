import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myproject/Widgets/Back_Ground.dart';
import 'package:myproject/Widgets/Hello.dart';
import 'package:myproject/Screens/CreatAccount.dart';
import 'package:myproject/Screens/PasswordTyping.dart';

import 'Login.dart';
class Password extends StatelessWidget {
   const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Positioned(child: BackGround(),),
            Positioned(child: Hello(),),
            Positioned(
              left: 90,
                top: 490,
                child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                    width: 60,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontWeight: FontWeight.w700,),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none,
                        ),

                      ),
                    )
                ),
                SizedBox(width: 6,),
                Container(

                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    width: 60,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontWeight: FontWeight.w700,),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none,
                        ),

                      ),
                    )
                ),
                SizedBox(width: 6,),
                Container(

                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    width: 60,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontWeight: FontWeight.w700,),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none,
                        ),

                      ),
                    )
                ),
                SizedBox(width: 6,),
                Container(

                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    width: 60,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontWeight: FontWeight.w700,),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none,
                        ),

                      ),
                    )
                ),


              ],

            )

            ),
              Positioned(
                bottom: 60,
                left: 0,
                right: 0,
                child:
              Container(
                   alignment: Alignment.center,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Passwordtyping()),
                        );
                      },
                      child: Text(
                        "Not you?",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Passwordtyping()),
                        );
                      },
                      child: SvgPicture.asset(
                        "assets/Button.svg",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ],
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
