import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/about_pages/about_five.dart';
import 'package:portfolio_web/view/about_pages/about_four.dart';
import 'package:portfolio_web/view/about_pages/about_one.dart';
import 'package:portfolio_web/view/about_pages/about_six.dart';
import 'package:portfolio_web/view/about_pages/about_three.dart';
import 'package:portfolio_web/view/about_pages/about_two.dart';

class AboutPage extends ConsumerWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // 1枚目
          AboutOne(),
          // 2枚目
          AboutTwo(),
          // 3枚目
          AboutThree(),
          // 4枚目
          AboutFour(),
          // 5枚目
          AboutFive(),
          // 6枚目
          AboutSix(),
        ],
      ),
    );
  }
}
