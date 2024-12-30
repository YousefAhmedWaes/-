import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myproject/Widgets/Hello.dart';

import 'WrongPassword.dart';

class Passwordtyping extends StatelessWidget {
  const Passwordtyping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:Stack(
         children: [
           Positioned(child:Hello(),),

           Positioned(

             child: Align(

               alignment: Alignment.center,

             child: Wrap(

             spacing: 10.0,
             children: List.generate(8, (index) {
               return Container(
                 width: 22,
                 height: 22,
                 decoration: BoxDecoration(
                   color: Colors.blueAccent,
                   shape: BoxShape.circle,
                 ),
               );
             }),
           ),),),
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
                         MaterialPageRoute(builder: (context) => Wrongpassword()),
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
                         MaterialPageRoute(builder: (context) => Wrongpassword()),
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
