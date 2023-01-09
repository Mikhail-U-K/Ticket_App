import 'package:flutter/cupertino.dart';

class AppLayOut {
  static getSize(BuildContext context) => MediaQuery.of(context).size;

  static getHeight(double pixels, BuildContext context) {
    final size = getSize(context);
    double x = size.height / pixels;
    return size.height / x;
  }

  static getWidth(double pixels, BuildContext context) {
    final size = getSize(context);
    double x = size.width / pixels;
    return size.width / x;
  }
}
