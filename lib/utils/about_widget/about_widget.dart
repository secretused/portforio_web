import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:go_router/go_router.dart';

import '../../provider/provider.dart';
import '../extract_widget.dart';

// 小タイトル
class SmallTitleUnderline extends StatelessWidget {
  const SmallTitleUnderline({
    Key? key,
    required this.smallTitle,
    required this.sizeValue,
    required this.lineLength,
  }) : super(key: key);

  final String smallTitle;
  final double sizeValue;
  final double lineLength;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyText(
          text: smallTitle,
          color: const Color.fromRGBO(3, 144, 126, 1),
          fontFamily: '',
          fontSize: deviceHeight * sizeValue,
          fontWeight: FontWeight.bold,
        ),
        HeightSizedBox(targetSize: deviceHeight, value: 0.005),
        DotLine(
          axis: Axis.horizontal,
          lineLength: lineLength,
          lineThickness: 1,
          dashLength: 5.0,
          dashColor: const Color.fromRGBO(3, 144, 126, 1),
        ),
      ],
    );
  }
}

// 破線
class DotLine extends StatelessWidget {
  const DotLine({
    Key? key,
    required this.axis,
    required this.lineLength,
    required this.lineThickness,
    required this.dashLength,
    required this.dashColor,
  }) : super(key: key);

  final Axis axis;
  final double lineLength;
  final double lineThickness;
  final double dashLength;
  final Color dashColor;

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: axis,
      lineLength: lineLength,
      lineThickness: lineThickness,
      dashLength: dashLength,
      dashColor: dashColor,
      // dashGradient: [Colors.red, Colors.blue],
      dashRadius: 0.0,
      dashGapLength: 4.0,
      dashGapColor: Colors.transparent,
      // dashGapGradient: [Colors.red, Colors.blue],
      dashGapRadius: 0.0,
    );
  }
}

// 強みのアイコン
class StrengthTopic extends StatelessWidget {
  const StrengthTopic({
    Key? key,
    required this.topicTitle,
    required this.icon,
  }) : super(key: key);

  final String topicTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      width: deviceHeight * 0.1,
      height: deviceHeight * 0.1,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(151, 151, 151, 0.5),
        borderRadius: BorderRadius.circular(180),
      ),
      child: Padding(
        padding: EdgeInsets.all(deviceHeight * 0.005),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: deviceHeight * 0.04,
            ),
            BodyText(
              text: topicTitle,
              color: Colors.white,
              fontFamily: '',
              fontSize: deviceHeight * 0.025,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}

// 5段階評価
class FiveLevelEvaluation extends StatelessWidget {
  const FiveLevelEvaluation({
    Key? key,
    required this.one,
    required this.two,
    required this.three,
    required this.four,
    required this.five,
  }) : super(key: key);

  final Widget one;
  final Widget two;
  final Widget three;
  final Widget four;
  final Widget five;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(top: deviceHeight * 0.01),
      child: Row(
        children: [
          one,
          WidthSizedBox(targetSize: deviceWidth, value: 0.003),
          two,
          WidthSizedBox(targetSize: deviceWidth, value: 0.003),
          three,
          WidthSizedBox(targetSize: deviceWidth, value: 0.003),
          four,
          WidthSizedBox(targetSize: deviceWidth, value: 0.003),
          five,
        ],
      ),
    );
  }
}

// 5段階評価 白丸
class FalseCircle extends StatelessWidget {
  const FalseCircle({
    Key? key,
    required this.sizeValue,
    required this.color,
  }) : super(key: key);

  final double sizeValue;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight * sizeValue,
      width: deviceHeight * sizeValue,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 1,
          color: color,
        ),
        borderRadius: BorderRadius.circular(180),
      ),
    );
  }
}

// 5段階評価 黒丸
class TrueCircle extends StatelessWidget {
  const TrueCircle({
    Key? key,
    required this.sizeValue,
    required this.color,
  }) : super(key: key);

  final double sizeValue;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight * sizeValue,
      width: deviceHeight * sizeValue,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(180),
      ),
    );
  }
}

// スキル テキストアイコン
class SkillText extends StatelessWidget {
  const SkillText({
    Key? key,
    required this.text,
    required this.fontValue,
  }) : super(key: key);

  final double fontValue;
  final String text;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: deviceHeight * fontValue,
        height: deviceHeight * fontValue,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(151, 151, 151, 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                top: deviceHeight * 0.005,
                bottom: deviceHeight * 0.005,
                right: deviceHeight * 0.005,
                left: deviceHeight * 0.008),
            child: BodyText(
              text: text,
              color: Colors.white,
              fontFamily: '',
              fontSize: deviceHeight * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// スキル イメージアイコン
class SkilIcon extends StatelessWidget {
  const SkilIcon({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      width: deviceHeight * 0.07,
      height: deviceHeight * 0.07,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(151, 151, 151, 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(deviceHeight * 0.005),
          child: SvgPicture.asset(
            imagePath,
            width: deviceHeight * 0.04,
            height: deviceHeight * 0.04,
          ),
        ),
      ),
    );
  }
}

// 年表縦ライン
class VerticalBorderLine extends StatelessWidget {
  const VerticalBorderLine({
    Key? key,
    required this.heightPadding,
    required this.heightValue,
  }) : super(key: key);

  final double heightPadding;
  final double heightValue;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
          top: deviceHeight * heightPadding, left: deviceWidth * 0.004),
      child: Container(
        width: 1,
        height: deviceHeight * heightValue,
        color: Colors.grey,
      ),
    );
  }
}

// 年表
class MyHistoryTopic extends StatelessWidget {
  const MyHistoryTopic({
    Key? key,
    required this.circleColor,
    required this.time,
    required this.event,
    required this.eventColor,
  }) : super(key: key);

  final Color circleColor;
  final String time;
  final String event;
  final Color eventColor;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: deviceHeight * 0.003),
          child: TrueCircle(
            sizeValue: 0.015,
            color: circleColor,
          ),
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyText(
              text: time,
              color: const Color.fromRGBO(0, 0, 0, 0.8),
              fontSize: deviceWidth * 0.005,
              fontWeight: FontWeight.normal,
              fontFamily: "Noto Sans JP",
            ),
            BodyText(
              text: event,
              color: eventColor,
              fontSize: deviceWidth * 0.01,
              fontWeight: FontWeight.normal,
              fontFamily: "源ノ角ゴシック VF",
            ),
          ],
        ),
      ],
    );
  }
}

// Works 目次トピック
class WorksTopicContents extends ConsumerWidget {
  const WorksTopicContents({
    Key? key,
    required this.index,
    required this.topicColor,
    required this.imagePath,
    required this.appName,
    required this.appDisc,
    required this.path,
  }) : super(key: key);

  final String index;
  final Color topicColor;
  final String imagePath;
  final String appName;
  final String appDisc;
  final String path;

  final bool status = false;
  final String nowApp = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final String _appName = ref.watch(appNameProvider);
    final bool _worksTopicContentsProviderStatus =
        ref.watch(worksTopicContentsProvider);

    return Column(
      children: [
        BodyText(
          text: index,
          color: const Color.fromRGBO(151, 151, 151, 1),
          fontSize: deviceHeight * 0.05,
          fontWeight: FontWeight.bold,
          fontFamily: "源ノ角ゴシック VF",
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        MouseRegion(
          onEnter: (_) => _worksEnter(ref, appName),
          onExit: (_) => _worksExit(ref),
          child: GestureDetector(
            onTap: () => GoRouter.of(context).go(path),
            child: Container(
              decoration: BoxDecoration(
                color: topicColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: deviceHeight * 0.25,
                width: deviceHeight * 0.25,
                child: Padding(
                  padding: EdgeInsets.all(
                    deviceHeight * 0.03,
                  ),
                  child: Image.network(
                    imagePath,
                  ),
                ),
              ),
            ),
          ),
        ),
        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
        MouseRegion(
          onEnter: (_) => _worksEnter(ref, appName),
          onExit: (_) => _worksExit(ref),
          child: GestureDetector(
            onTap: () => GoRouter.of(context).go(path),
            child: Column(
              children: [
                BodyText(
                  text: appName,
                  color:
                      (_appName == appName && _worksTopicContentsProviderStatus)
                          ? topicColor
                          : const Color.fromRGBO(0, 0, 0, 0.8),
                  fontSize: deviceHeight * 0.05,
                  fontWeight: FontWeight.bold,
                  fontFamily: "源ノ角ゴシック VF",
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                BodyText(
                  text: appDisc,
                  color:
                      (_appName == appName && _worksTopicContentsProviderStatus)
                          ? topicColor
                          : const Color.fromRGBO(151, 151, 151, 1),
                  fontSize: deviceHeight * 0.02,
                  fontWeight: FontWeight.bold,
                  fontFamily: "源ノ角ゴシック VF",
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _worksEnter(WidgetRef ref, String appName) {
    ref.read(appNameProvider.notifier).update((state) => appName);
    ref.read(worksTopicContentsProvider.notifier).update((state) => true);
  }

  void _worksExit(WidgetRef ref) {
    ref.read(worksTopicContentsProvider.notifier).update((state) => false);
  }
}

// 目次 Works遷移ボタン
class WorksNavigationButton extends ConsumerWidget {
  const WorksNavigationButton({
    Key? key,
    required this.buttonText,
    required this.sizeValue,
  }) : super(key: key);

  final String buttonText;
  final double sizeValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var appbarHeight = AppBar().preferredSize.height;

    return ElevatedButton(
      child: Padding(
        padding: EdgeInsets.only(
            top: deviceHeight * sizeValue, bottom: deviceHeight * sizeValue),
        child: Align(
          alignment: Alignment.center,
          child: BodyText(
            text: buttonText,
            color: Colors.white,
            fontFamily: '',
            fontWeight: FontWeight.bold,
            fontSize: appbarHeight * 0.4,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(151, 151, 151, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () => GoRouter.of(context).go("/works"),
    );
  }
}
