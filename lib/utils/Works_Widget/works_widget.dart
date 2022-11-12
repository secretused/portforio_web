import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../About_Widget/about_widget.dart';
import '../extract_widget.dart';

final statusProvider = StateProvider((_) => false);

class WorksContent extends StatelessWidget {
  const WorksContent({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.indexNumber,
    required this.topicColor,
    required this.imagePath,
    required this.catchPhrase,
    required this.title,
    required this.paddingLeft,
    required this.imagePadding,
    required this.navigationPath,
    required this.worksRef,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;
  final String indexNumber;
  final Color topicColor;
  final String imagePath;
  final String catchPhrase;
  final String title;
  final double paddingLeft;
  final double imagePadding;
  final String navigationPath;

  final WidgetRef worksRef;

  @override
  Widget build(BuildContext context) {
    final bool _status = worksRef.watch(statusProvider);
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
                onEnter: (_) => statusEnter(),
                onExit: (_) => statusExit(),
                child: SizedBox(
                  child: Container(
                    color: _status
                        ? const Color.fromRGBO(158, 158, 158, 0.1)
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

  void statusEnter() {
    worksRef.read(statusProvider.notifier).update((state) => true);
  }

  void statusExit() {
    worksRef.read(statusProvider.notifier).update((state) => false);
  }
}

// アイコン + テキスト
class IconText extends StatelessWidget {
  const IconText({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.icon,
    required this.iconSize,
    required this.text,
    required this.textSize,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final IconData icon;
  final double iconSize;
  final String text;
  final double textSize;

  @override
  Widget build(BuildContext context) {
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
    required this.deviceHeight,
    required this.deviceWidth,
    required this.circleColor,
    required this.process,
    required this.eventColor,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final Color circleColor;
  final String process;
  final Color eventColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: deviceHeight * 0.003),
          child: TrueCircle(
            deviceHeight: deviceHeight,
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
    required this.deviceHeight,
    required this.deviceWidth,
    required this.circleColor,
    required this.process,
    required this.detail,
    required this.eventColor,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final Color circleColor;
  final String process;
  final String detail;
  final Color eventColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: deviceHeight * 0.003),
          child: TrueCircle(
            deviceHeight: deviceHeight,
            sizeValue: 0.015,
            color: circleColor,
          ),
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BodyText(
              text: process,
              color: eventColor,
              fontSize: deviceWidth * 0.01,
              fontWeight: FontWeight.normal,
              fontFamily: "源ノ角ゴシック VF",
            ),
            BodyText(
              text: detail,
              color: const Color.fromRGBO(0, 0, 0, 0.8),
              fontSize: deviceWidth * 0.005,
              fontWeight: FontWeight.normal,
              fontFamily: "",
            ),
          ],
        ),
      ],
    );
  }
}
