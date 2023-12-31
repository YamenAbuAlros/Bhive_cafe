import 'package:darrebni_project_test/ui/shared/colors.dart';
import 'package:darrebni_project_test/ui/shared/utils.dart';
import 'package:flutter/material.dart';
import '../../../core/utilis/general_util.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.textcolor,
      this.fontsize,
      this.fontWeight});
  final String text;
  final double? fontsize;
  final Color? textcolor;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection: storage.getAppLanguage() == 'ar'
          ? TextDirection.rtl
          : TextDirection.ltr,
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: textcolor ?? AppColors.secondaryColor,
          // ignore: prefer_if_null_operators
          fontSize: fontsize ?? width * 0.035,
          // ignore: prefer_if_null_operators
          fontWeight: fontWeight ?? FontWeight.w400),
    );
  }
}
