import 'package:flutter/material.dart';

class SizeConfigs {
  static late Size _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context).size;
    screenWidth = _mediaQueryData.width;
    screenHeight = _mediaQueryData.height;
  }
}

double getProportionalWidth(double inputWidth) {
  double screenWidth = SizeConfigs.screenWidth;
  return (inputWidth / 448) * screenWidth;
}

double getProportionalHeight(double inputHeight) {
  double screenHeight = SizeConfigs.screenHeight;
  return (inputHeight / 998) * screenHeight;
}
