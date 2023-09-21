import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  double? fontSize;
  String? fontFamily;
  Color? textcolor;
  TextWidget({
    super.key,
    required this.text,
    this.fontSize,
    this.fontFamily,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize ?? 13, fontFamily: fontFamily, color: textcolor),
    );
  }
}
