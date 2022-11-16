import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'about_widget.dart';
import '../extract_widget.dart';

final _statusProvider = StateProvider((_) => false);

// WorksTopicWidget
class WorksTopic extends ConsumerWidget {
  const WorksTopic({
    Key? key,
    required this.indexNumber,
    required this.topicColor,
    required this.imagePath,
    required this.catchPhrase,
    required this.title,
    required this.paddingLeft,
    required this.imagePadding,
    required this.navigationPath,
  }) : super(key: key);

  final String indexNumber;
  final Color topicColor;
  final String imagePath;
  final String catchPhrase;
  final String title;
  final double paddingLeft;
  final double imagePadding;
  final String navigationPath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final bool _status = ref.watch(_statusProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            // インデックス番号
            Padding(
              padding: EdgeInsets.only(
                  bottom: deviceHeight * 0.65, right: deviceWidth * 0.45),
              child: BodyText(
                text: indexNumber,
                color: Colors.grey,
                fontSize: deviceHeight * 0.1,
                fontFamily: '',
                fontWeight: FontWeight.bold,
              ),
            ),
            // 緑の背景
            SizedBox(
              child: Container(
                color: topicColor,
              ),
              width: deviceWidth * 0.55,
              height: deviceHeight * 0.6,
            ),
            // アプリ画像
            Padding(
              padding: EdgeInsets.only(right: deviceWidth * imagePadding),
              child: SizedBox(
                height: deviceHeight * 0.6,
                child: Image.network(
                  imagePath,
                ),
              ),
            ),
            // キャッチフレーズ & タイトル
            Padding(
              padding: EdgeInsets.only(
                  top: deviceHeight * 0.48, left: deviceWidth * paddingLeft),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyText(
                    text: catchPhrase,
                    color: Colors.white,
                    fontSize: deviceHeight * 0.02,
                    fontWeight: FontWeight.bold,
                    fontFamily: '',
                  ),
                  BodyText(
                    text: title,
                    color: Colors.white,
                    fontSize: deviceHeight * 0.07,
                    fontWeight: FontWeight.bold,
                    fontFamily: '源ノ角ゴシック VF',
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => GoRouter.of(context).go(navigationPath),
              child: MouseRegion(
                onEnter: (_) => statusEnter(ref),
                onExit: (_) => statusExit(ref),
                child: SizedBox(
                  child: Container(
                    color: _status
                        ? const Color.fromRGBO(158, 158, 158, 0.3)
                        : Colors.transparent,
                  ),
                  width: deviceWidth * 0.55,
                  height: deviceHeight * 0.6,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void statusEnter(WidgetRef ref) {
    ref.read(_statusProvider.notifier).update((state) => true);
  }

  void statusExit(WidgetRef ref) {
    ref.read(_statusProvider.notifier).update((state) => false);
  }
}

// アイコン + テキスト
class IconText extends StatelessWidget {
  const IconText({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.text,
    required this.textSize,
  }) : super(key: key);

  final IconData icon;
  final double iconSize;
  final String text;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: deviceHeight * iconSize,
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        BodyText(
          text: text,
          color: Colors.white,
          fontFamily: '源ノ角ゴシック VF',
          fontSize: deviceHeight * textSize,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}

// 作業プロセス
class ProcessTopic extends StatelessWidget {
  const ProcessTopic({
    Key? key,
    required this.circleColor,
    required this.process,
    required this.eventColor,
  }) : super(key: key);

  final Color circleColor;
  final String process;
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
              text: process,
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

// 作業プロセス
class ProcessDetail extends StatelessWidget {
  const ProcessDetail({
    Key? key,
    required this.process,
    required this.detail,
  }) : super(key: key);

  final String process;
  final String detail;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BodyText(
          text: process,
          color: Colors.black,
          fontSize: deviceWidth * 0.011,
          fontWeight: FontWeight.bold,
          fontFamily: "Noto Sans JP",
        ),
        HeightSizedBox(targetSize: deviceHeight, value: 0.005),
        BodyText(
          text: detail,
          color: const Color.fromRGBO(0, 0, 0, 0.6),
          fontSize: deviceWidth * 0.01,
          fontWeight: FontWeight.normal,
          fontFamily: "",
        ),
      ],
    );
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    Key? key,
    required this.heightPadding,
    required this.heightValue,
    required this.lineColor,
  }) : super(key: key);

  final double heightPadding;
  final double heightValue;
  final Color lineColor;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        top: deviceHeight * 0.003,
        bottom: deviceHeight * 0.003,
      ),
      child: Container(
        width: 3,
        height: deviceHeight * heightValue,
        color: lineColor,
      ),
    );
  }
}

// 2個テキストが横並び
class SpaceText extends StatelessWidget {
  const SpaceText({
    Key? key,
    required this.firstText,
    required this.firstFontSize,
    required this.secondText,
    required this.secondFontSize,
  }) : super(key: key);

  final String firstText;
  final double firstFontSize;
  final String secondText;
  final double secondFontSize;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        BodyText(
          text: firstText,
          color: Colors.black,
          fontSize: firstFontSize,
          fontWeight: FontWeight.normal,
          fontFamily: "源ノ角ゴシック VF",
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        BodyText(
          text: secondText,
          color: Colors.black,
          fontSize: secondFontSize,
          fontWeight: FontWeight.normal,
          fontFamily: "源ノ角ゴシック VF",
        ),
      ],
    );
  }
}

// 課題内容
class IssueTopic extends StatelessWidget {
  const IssueTopic({
    Key? key,
    required this.isuueTopic,
    required this.isuueDetail,
    required this.isuueDisc,
  }) : super(key: key);

  final String isuueTopic;
  final String isuueDetail;
  final String isuueDisc;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyText(
          text: isuueTopic,
          color: const Color.fromRGBO(0, 0, 0, 0.8),
          fontSize: deviceHeight * 0.02,
          fontWeight: FontWeight.bold,
          fontFamily: "Noto Sans JP",
        ),
        Padding(
          padding: EdgeInsets.only(top: deviceHeight * 0.005),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(135, 196, 149, 0.6),
                ),
                child: Padding(
                  padding: EdgeInsets.all(deviceHeight * 0.01),
                  child: LongText(
                    text: isuueDetail,
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                    fontSize: deviceHeight * 0.02,
                    fontWeight: FontWeight.bold,
                    fontFamily: "源ノ角ゴシック VF",
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              WidthSizedBox(targetSize: deviceWidth, value: 0.01),
              BodyText(
                text: isuueDisc,
                color: const Color.fromRGBO(0, 0, 0, 0.8),
                fontSize: deviceHeight * 0.02,
                fontWeight: FontWeight.normal,
                fontFamily: "源ノ角ゴシック VF",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
