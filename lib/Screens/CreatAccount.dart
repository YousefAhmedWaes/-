import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:myproject/Screens/Login.dart';

class CreatAccount extends StatelessWidget {
  const CreatAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: SvgPicture.asset(
                "assets/bubble.svg",
                width: 311.01,
              ),
            ),
            Positioned(
              left: 40,
              top: 200,
              child: Text(
                "Create",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 40,
              top: 250,
              child: Text(
                "Account",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 118,
              child: SvgPicture.asset(
                "assets/bubble2.svg",
                width: 122,
              ),
            ),
            Positioned(
              left: 50,
              top: 360,
              child: SvgPicture.asset(
                "assets/UploadPhoto.svg",
                width: 95,
              ),
            ),
            Positioned(
              left: 20,
              top: 480,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 14),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    width: 400,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Email",
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),),
                  SizedBox(height: 14),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    width: 400,
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Password",
                        contentPadding: EdgeInsets.all(16.0),
                        filled: true,
                        fillColor: Colors.white,

                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    width: 400,
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.DROPDOWN,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      initialValue: PhoneNumber(isoCode: 'KW'),
                      textFieldController: TextEditingController(),
                      formatInput: false,
                      keyboardType: TextInputType.phone,
                      inputDecoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.black),

                        ),
                        hintText: "your phone",
                        contentPadding: EdgeInsets.all(16.0),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(Size(400, 70)),
                      backgroundColor: WidgetStateProperty.all(
                          Colors.blueAccent),

                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Done",
                      style: TextStyle(fontSize: 22,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 25),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}