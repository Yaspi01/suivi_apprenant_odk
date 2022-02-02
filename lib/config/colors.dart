import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor mainColor = MaterialColor(
    0xffF99723, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff497958), //10%
      100: Color(0xff6cb382), //20%
      200: Color(0xff5f9d72), //30%
      300: Color(0xff518662), //40%
      400: Color(0xff447052), //50%
      500: Color(0xff365a41), //60%
      600: Color(0xff284331), //70%
      700: Color(0xff1b2d21), //80%
      800: Color(0xff0d1610), //90%
      900: Color(0xff000000), //100%
    },
  );
}
