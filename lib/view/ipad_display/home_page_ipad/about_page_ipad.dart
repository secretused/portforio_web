import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../mobile_display/about_pages_mobile/about_four_mobile.dart';
import '../../mobile_display/about_pages_mobile/about_one_mobile.dart';
import '../../mobile_display/about_pages_mobile/about_seven_mobile.dart';
import '../../mobile_display/about_pages_mobile/about_two_mobile.dart';
import '../../mobile_display/about_pages_mobile/about_three_mobile.dart';
import '../about_pages_ipad/about_five_ipad_page.dart';
import '../about_pages_ipad/about_six_ipad_page.dart';

class AboutPageIpad extends ConsumerWidget {
  const AboutPageIpad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // 1枚目
          AboutOneMobile(),
          // 2枚目
          AboutTwoMobile(),
          // 3枚目
          AboutThreeMobile(),
          // 4枚目
          AboutFourMobile(),
          // 5枚目
          AboutFiveIPad(),
          // 6枚目
          AboutSixIPad(),
          // 7枚目
          AboutSevenMobile(),
        ],
      ),
    );
  }
}
