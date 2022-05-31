import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  Constants._();
  static const String title = 'Pokadex';
  static responsivePadding() {
    return ScreenUtil().orientation == Orientation.portrait ? EdgeInsets.all(10.h) : EdgeInsets.all(8.w);
  }

  static TextStyle titleStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize:
          ScreenUtil().orientation == Orientation.portrait ? 0.05.sh : 0.05.sw,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle pokeTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize:
          ScreenUtil().orientation == Orientation.portrait ? 0.025.sh : 0.025.sw,
      fontWeight: FontWeight.bold,
    );
  }
  static double pokeSize() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.2.sw : 0.2.sw;
  }
}
