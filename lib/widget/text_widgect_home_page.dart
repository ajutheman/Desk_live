import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  double? fontSize;
  double? linespace;
  String? fontFamily;
  Color? textcolor;
  FontWeight? fontWeight;

  TextWidget(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontFamily,
      this.linespace,
      this.textcolor,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 13,
        fontFamily: fontFamily,
        color: textcolor,
        height: linespace,
        fontWeight: fontWeight,
      ),
    );
  }
}
