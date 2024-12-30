import 'package:flutter/material.dart';
import 'package:myproject/Widgets/Hello.dart';

class Wrongpassword extends StatelessWidget {
  const Wrongpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),),),

          ],
        ),

      ),

    );
  }
}
