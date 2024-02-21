import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray200 = fromHex('#bac1ce');

  static Color blueGray100 = fromHex('#d6dae2');

  static Color blueGray400 = fromHex('#74839d');

  static Color red700 = fromHex('#d03329');

  static Color blueGray300 = fromHex('#9ea8ba');

  static Color blueA700 = fromHex('#0061ff');

  static Color blueGray600 = fromHex('#5f6c86');

  static Color green600 = fromHex('#349765');

  static Color gray50 = fromHex('#f9fbff');

  static Color blue50 = fromHex('#e0ebff');

  static Color gray30099 = fromHex('#99e4e4e4');

  static Color black900 = fromHex('#000000');

  static Color whiteA70067 = fromHex('#67ffffff');

  static Color blue507f = fromHex('#7fe0ebff');

  static Color blueGray900 = fromHex('#262b35');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70011 = fromHex('#11555555');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
