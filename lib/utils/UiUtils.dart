import 'package:flutter/material.dart';

class UiUtils {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getHeightFromPercentageInPx(BuildContext context, int heightInPercent) {
    return (MediaQuery.of(context).size.height * heightInPercent)/100;
  }

  static double getWidthFromPercentageInPx(BuildContext context, int widthInPercent) {
    return (MediaQuery.of(context).size.width * widthInPercent)/100;
  }

}
