import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/view/web_display/home_page_web/works_page_web.dart';
import 'dart:html' as html;

import '../../provider/provider.dart';
import 'about_widget.dart';
import '../extract_widget.dart';

// WorksTopicWidget
class WorksTopic extends ConsumerWidget {
  const WorksTopic({
    Key? key,
    required this.indexNumber,
    required this.topicColor,
    required this.imagePath,
    required this.catchPhrase,
    required this.title,
    required this.fontName,
    required this.paddingLeft,
    required this.imagePadding,
    required this.navigationPath,
  }) : super(key: key);

  final String indexNumber;
  final Color topicColor;
  final String imagePath;
  final String catchPhrase;
  final String title;
  final String fontName;
  final double paddingLeft;
  final double imagePadding;
  final String navigationPath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final bool _worksTopicProviderStatus = ref.watch(worksTopicProvider);

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
                  top: deviceHeight * 0.48,
                  bottom: deviceHeight * 0.01,
                  left: deviceWidth * paddingLeft),
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
                    fontFamily: fontName,
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
                    color: _worksTopicProviderStatus
                        ? const Color.fromRGBO(151, 151, 151, 0.15)
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
    ref.read(worksTopicProvider.notifier).update((state) => true);
    controller.stopAutoplay();
  }

  void statusExit(WidgetRef ref) {
    ref.read(worksTopicProvider.notifier).update((state) => false);
    controller.startAutoplay();
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

// アイコン + テキスト 黒字
class IconTextBlack extends StatelessWidget {
  const IconTextBlack({
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
          color: const Color(0xFFCBCBCB),
          size: deviceHeight * iconSize,
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        BodyText(
          text: text,
          color: const Color.fromRGBO(0, 0, 0, 0.8),
          fontFamily: '源ノ角ゴシック VF',
          fontSize: deviceHeight * textSize,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}

// 仮説の影ありテキストコンテナ
class ShadowContainerText extends StatelessWidget {
  const ShadowContainerText({
    Key? key,
    required this.deviceHeight,
    required this.text,
  }) : super(key: key);

  final double deviceHeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: const Color.fromRGBO(151, 151, 151, 0.3),
      ),
      child: Padding(
        padding: EdgeInsets.all(deviceHeight * 0.015),
        child: BodyText(
          text: text,
          color: const Color.fromRGBO(0, 0, 0, 0.8),
          fontSize: deviceHeight * 0.02,
          fontWeight: FontWeight.normal,
          fontFamily: "Noto Sans JP",
        ),
      ),
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
          fontFamily: "Noto Sans JP",
        ),
      ],
    );
  }
}

//
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
    required this.containerColor,
  }) : super(key: key);

  final String isuueTopic;
  final String isuueDetail;
  final String isuueDisc;
  final Color containerColor;

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
                  color: containerColor,
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

// カラーコード
class ColorDesignWidget extends StatelessWidget {
  const ColorDesignWidget({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.colorCode,
    required this.color,
    required this.rgbColorModel,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final String colorCode;
  final Color color;
  final String rgbColorModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: deviceHeight * 0.06,
          height: deviceHeight * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(151, 151, 151, 0.3), //色
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(-3, 3),
              ),
            ],
            color: color,
          ),
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyText(
              text: "#$colorCode",
              color: const Color.fromRGBO(0, 0, 0, 0.8),
              fontSize: deviceHeight * 0.02,
              fontWeight: FontWeight.normal,
              fontFamily: "Noto Sans JP",
            ),
            HeightSizedBox(targetSize: deviceHeight, value: 0.01),
            BodyText(
              text: rgbColorModel,
              color: const Color.fromRGBO(0, 0, 0, 0.8),
              fontSize: deviceHeight * 0.02,
              fontWeight: FontWeight.normal,
              fontFamily: "Noto Sans JP",
            ),
          ],
        ),
      ],
    );
  }
}

// OtherWorks 小タイトルとテキスト
class TitleAndTextWidget extends StatelessWidget {
  const TitleAndTextWidget({
    Key? key,
    required this.tiltle,
    required this.widget,
    required this.textColor,
  }) : super(key: key);
  final String tiltle;
  final Widget widget;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyText(
          text: tiltle,
          color: textColor,
          fontSize: deviceHeight * 0.025,
          fontWeight: FontWeight.bold,
          fontFamily: "源ノ角ゴシック VF",
        ),
        HeightSizedBox(
          targetSize: deviceHeight,
          value: 0.01,
        ),
        widget,
      ],
    );
  }
}

// ImageLinkWidget
class ImageLinkWidget extends ConsumerWidget {
  const ImageLinkWidget(
    this.linkPath,
    this.imageWidthValue,
    this.imagePath, {
    Key? key,
  }) : super(key: key);

  final String linkPath;
  final double imageWidthValue;
  final String imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;

    final bool _imageLinkProviderStatus = ref.watch(imageLinkProvider);

    return MouseRegion(
      onEnter: (_) => _imageEnter(ref),
      onExit: (_) => _imageExit(ref),
      child: GestureDetector(
        onTap: () => html.window.open(linkPath, ''),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: _imageLinkProviderStatus
                    ? Colors.grey
                    : Colors.transparent, //色
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(1, 1),
              ),
            ],
            color: Colors.white,
          ),
          width: deviceWidth * imageWidthValue,
          child: Image.network(imagePath),
        ),
      ),
    );
  }

  void _imageEnter(WidgetRef ref) {
    ref.read(imageLinkProvider.notifier).update((state) => true);
  }

  void _imageExit(WidgetRef ref) {
    ref.read(imageLinkProvider.notifier).update((state) => false);
  }
}
