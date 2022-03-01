import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA700E5 = fromHex('#e5ffffff');

  static Color bluegray50 = fromHex('#f2f0f2');

  static Color gray900 = fromHex('#210d33');

  static Color bluegray100 = fromHex('#ccc7d1');

  static Color red300 = fromHex('#fa6969');

  static Color gray200 = fromHex('#ebe8ed');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#8c8096');

  static Color whiteA700Bf = fromHex('#bfffffff');

  static Color gray9001a = fromHex('#1a2e0047');

  static Color indigoA400 = fromHex('#3b63fa');

  static Color deepPurpleA200 = fromHex('#8766f2');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepPurpleA20066 = fromHex('#668766f2');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
