import 'package:flutter/material.dart';

class BodySizedBox extends StatelessWidget {
  const BodySizedBox({
    Key? key,
    required this.targetSize,
    required this.value,
  }) : super(key: key);

  final double targetSize;
  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: targetSize * value,
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({
    Key? key,
    required this.deviceHeight,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
  }) : super(key: key);

  final double deviceHeight;
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight),
    );
  }
}
