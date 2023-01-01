import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/utils/extract_widget.dart';
import 'package:portfolio_web/view/web_display/about_pages_web/about_five_web.dart';
import 'package:portfolio_web/view/web_display/about_pages_web/about_four_web.dart';
import 'package:portfolio_web/view/web_display/about_pages_web/about_one_web.dart';
import 'package:portfolio_web/view/web_display/about_pages_web/about_six_web.dart';
import 'package:portfolio_web/view/web_display/about_pages_web/about_two_web.dart';
import 'package:portfolio_web/view/web_display/about_pages_web/about_three_web.dart';

class AboutPageWeb extends ConsumerWidget {
  const AboutPageWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1枚目
          const AboutOneWeb(),
          SizedBox(
            width: deviceWidth,
            height: deviceHeight * 0.3,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
          // 2枚目
          const AboutTwo(),
          // 3枚目
          const AboutThree(),
          // 4枚目
          const AboutFour(),
          // 5枚目
          const AboutFive(),
          // 6枚目
          const AboutSix(),
        ],
      ),
    );
  }
}
