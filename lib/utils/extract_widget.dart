import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'dart:html' as html;

import '../provider/provider.dart';

// AppbarIcon
class AppbarIcon extends StatelessWidget {
  const AppbarIcon({
    Key? key,
    required this.appbarHeight,
    required this.heightValue,
    required this.backgroundColor,
  }) : super(key: key);

  final double appbarHeight;
  final double heightValue;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).go("/"),
      child: SizedBox(
        width: appbarHeight * heightValue,
        height: appbarHeight * heightValue,
        child: ElevatedButton(
          child: BodyText(
            text: "",
            color: Colors.white,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.bold,
            fontSize: appbarHeight * 0.4,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(180),
            ),
          ),
          onPressed: () => context.go("/"),
        ),
      ),
    );
  }
}

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
        letterSpacing: fontSize * 0.05,
        height: 1.1,
      ),
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

// 折りたたみテキスト(余白 高)
class HighPaddingText extends StatelessWidget {
  const HighPaddingText({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
    required this.textAlign,
    required this.paddingValue,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final TextAlign textAlign;
  final double paddingValue;

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
        height: paddingValue,
        letterSpacing: fontSize * 0.05,
      ),
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
class IconButtonWidget extends ConsumerWidget {
  const IconButtonWidget({
    Key? key,
    required this.link,
    required this.imageValue,
    required this.iconValue,
    required this.path,
  }) : super(key: key);

  final String link;
  final double iconValue;
  final double imageValue;
  final String path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;

    final String _imagePath = ref.watch(imagePathProvider);
    final bool _iconButtonProviderStatus = ref.watch(iconButtonProvider);

    return MouseRegion(
      onEnter: (_) => _iconEnter(ref, path),
      onExit: (_) => _iconExit(ref),
      child: GestureDetector(
        onTap: () => html.window.open(link, ''),
        child: Container(
          height: deviceHeight * iconValue,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(180),
            boxShadow: [
              BoxShadow(
                color: (_imagePath == path && _iconButtonProviderStatus)
                    ? const Color.fromRGBO(151, 151, 151, 0.3)
                    : Colors.transparent,
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: ImageWidget(
            heightValue: (_imagePath == path && _iconButtonProviderStatus)
                ? imageValue
                : imageValue,
            imagePath: path,
          ),
        ),
      ),
    );
  }

  void _iconEnter(WidgetRef ref, String imagePath) {
    ref.read(imagePathProvider.notifier).update((state) => imagePath);
    ref.read(iconButtonProvider.notifier).update((state) => true);
  }

  void _iconExit(WidgetRef ref) {
    ref.read(iconButtonProvider.notifier).update((state) => false);
  }
}

// アセットイメージ
class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.heightValue,
    required this.imagePath,
  }) : super(key: key);

  final double heightValue;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: deviceHeight * heightValue,
      child: Image.asset(imagePath),
    );
  }
}

// イメージ
class ImageWidthWidget extends StatelessWidget {
  const ImageWidthWidget({
    Key? key,
    required this.widthValue,
    required this.imagePath,
  }) : super(key: key);

  final double widthValue;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: deviceHeight * widthValue,
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imagePath,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
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
