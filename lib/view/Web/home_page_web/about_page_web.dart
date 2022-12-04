import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/web/about_pages_web/about_five_web.dart';
import 'package:portfolio_web/view/web/about_pages_web/about_four_web.dart';
import 'package:portfolio_web/view/web/about_pages_web/about_one_web.dart';
import 'package:portfolio_web/view/web/about_pages_web/about_six_web.dart';
import 'package:portfolio_web/view/web/about_pages_web/about_three_web.dart';
import 'package:portfolio_web/view/web/about_pages_web/about_two_web.dart';

class AboutPageWeb extends ConsumerWidget {
  const AboutPageWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // 1枚目
          AboutOneWeb(),
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
