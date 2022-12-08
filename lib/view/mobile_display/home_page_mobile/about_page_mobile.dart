import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/provider.dart';
import '../../../utils/mobile_widget/about_widget_mobile.dart';
import '../about_pages_mobile/about_one_mobile.dart';
import '../about_pages_mobile/about_two_mobile.dart';
import '../about_pages_mobile/about_four_mobile.dart';
import '../about_pages_mobile/about_three_mobile.dart';
import '../about_pages_mobile/about_five_mobile.dart';
import '../about_pages_mobile/about_six_mobile.dart';
import '../about_pages_mobile/about_seven_mobile.dart';

class AboutPageIphone extends ConsumerWidget {
  const AboutPageIphone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;

    final bool _mobileDirectionProviderStatus =
        ref.watch(mobileDirectionProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          // 1枚目
          const AboutOneMobile(),

          HaightColorContainer(
            targetSize: deviceWidth,
            value: _mobileDirectionProviderStatus ? 0.15 : 0.35,
          ),

          // 2枚目
          const AboutTwoMobile(),

          HaightColorContainer(
            targetSize: deviceWidth,
            value: _mobileDirectionProviderStatus ? 0.15 : 0.35,
          ),

          // 3枚目
          const AboutThreeMobile(),

          HaightColorContainer(
            targetSize: deviceWidth,
            value: _mobileDirectionProviderStatus ? 0.15 : 0.2,
          ),

          // 4枚目
          const AboutFourMobile(),

          HaightColorContainer(
            targetSize: deviceWidth,
            value: 0.15,
          ),

          // 5枚目
          const AboutFiveMobile(),

          HaightColorContainer(
            targetSize: deviceWidth,
            value: 0.15,
          ),

          // 6枚目
          const AboutSixMobile(),

          HaightColorContainer(
            targetSize: deviceWidth,
            value: 0.15,
          ),
          // 7枚目
          const AboutSevenMobile(),

          HaightColorContainer(
            targetSize: deviceWidth,
            value: 0.1,
          ),
        ],
      ),
    );
  }
}
