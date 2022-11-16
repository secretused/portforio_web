import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'dart:html' as html;

// 余白(Width)
class WidthSizedBox extends StatelessWidget {
  const WidthSizedBox({
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

// 余白(Height)
class HeightSizedBox extends StatelessWidget {
  const HeightSizedBox({
    Key? key,
    required this.targetSize,
    required this.value,
  }) : super(key: key);

  final double targetSize;
  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: targetSize * value,
    );
  }
}

// テキスト
class BodyText extends StatelessWidget {
  const BodyText({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          height: 1.1),
    );
  }
}

// 折りたたみテキスト
class LongText extends StatelessWidget {
  const LongText({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.textAlign,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          height: 1.1),
    );
  }
}

// テキストボタン
class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.targetSize,
    required this.text,
    required this.sizeValue,
    required this.color,
    required this.path,
  }) : super(key: key);

  final double targetSize;
  final String text;
  final double sizeValue;
  final Color color;
  final String path;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: targetSize * sizeValue,
          color: color,
        ),
      ),
      onPressed: () => GoRouter.of(context).go(path),
    );
  }
}

// アイコンボタン
final _statusProvider = StateProvider((_) => false);
final _iconNameProvider = StateProvider((_) => "");

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
    required this.link,
    required this.heightValue,
    required this.path,
  }) : super(key: key);

  final String link;
  final double heightValue;
  final String path;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: GestureDetector(
        onTap: () => html.window.open(link, ''),
        child: ImageWidget(
          heightValue: heightValue,
          widthValue: 0,
          imagePath: path,
        ),
      ),
    );
  }
}

// イメージ
class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.heightValue,
    required this.widthValue,
    required this.imagePath,
  }) : super(key: key);

  final double heightValue;
  final double widthValue;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: deviceHeight * heightValue,
      // width: widthTarget * widthValue,
      child: Image.network(
        imagePath,
      ),
    );
  }
}

// Fade Navigation Animation
CustomTransitionPage<void> buildPageWithAnimation(Widget page) {
  return CustomTransitionPage<void>(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const double begin = 0.0;
      const double end = 1.0;
      final Animatable<double> tween = Tween(begin: begin, end: end)
          .chain(CurveTween(curve: Curves.easeInOut));
      final Animation<double> doubleAnimation = animation.drive(tween);
      return FadeTransition(
        opacity: doubleAnimation,
        child: child,
      );
    },
  );
}
