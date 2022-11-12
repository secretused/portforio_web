import 'package:flutter/material.dart';

import '../../utils/About_Widget/about_widget.dart';
import '../../utils/Appbar_Widget/works_appbar.dart';
import '../../utils/Works_Widget/works_widget.dart';
import '../../utils/extract_widget.dart';

class Tomony extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var appbarHeight = AppBar().preferredSize.height;

    return Scaffold(
      appBar: WorksAppbar(
        deviceWidth: deviceWidth,
        appbarHeight: appbarHeight,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // 1枚目
          Container(
            color: const Color(0xFF87C495),
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: deviceHeight,
                  child: Image.network(
                    "https://i.imgur.com/R58XrDL.png",
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BodyText(
                      text: "生理中のパートナーのお悩み質問",
                      color: Colors.white,
                      fontFamily: '源ノ角ゴシック VF',
                      fontSize: deviceHeight * 0.03,
                      fontWeight: FontWeight.normal,
                    ),
                    BodyText(
                      text: "TOMONY",
                      color: Colors.white,
                      fontFamily: '源ノ角ゴシック VF',
                      fontSize: deviceHeight * 0.13,
                      fontWeight: FontWeight.bold,
                    ),
                    HeightSizedBox(
                      targetSize: deviceHeight,
                      value: 0.025,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconText(
                          deviceHeight: deviceHeight,
                          deviceWidth: deviceWidth,
                          icon: Icons.insert_drive_file,
                          iconSize: 0.025,
                          text: 'UI/UX Design',
                          textSize: 0.025,
                        ),
                        HeightSizedBox(
                          targetSize: deviceHeight,
                          value: 0.01,
                        ),
                        IconText(
                          deviceHeight: deviceHeight,
                          deviceWidth: deviceWidth,
                          icon: Icons.people,
                          iconSize: 0.025,
                          text: '個人制作',
                          textSize: 0.025,
                        ),
                        HeightSizedBox(
                          targetSize: deviceHeight,
                          value: 0.01,
                        ),
                        IconText(
                          deviceHeight: deviceHeight,
                          deviceWidth: deviceWidth,
                          icon: Icons.brush,
                          iconSize: 0.025,
                          text: 'Figma',
                          textSize: 0.025,
                        ),
                        HeightSizedBox(
                          targetSize: deviceHeight,
                          value: 0.01,
                        ),
                        IconText(
                          deviceHeight: deviceHeight,
                          deviceWidth: deviceWidth,
                          icon: Icons.timer,
                          iconSize: 0.025,
                          text: '2022.9 (2週間)',
                          textSize: 0.025,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // 2枚目
          Container(
            color: Colors.white,
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BodyText(
                      text: "「生理中のパートナーへの複雑な感情を",
                      color: const Color(0xFF87C495),
                      fontSize: deviceHeight * 0.05,
                      fontWeight: FontWeight.bold,
                      fontFamily: "源ノ角ゴシック VF",
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                    BodyText(
                      text: "言語化できるお悩み質問アプリ」",
                      color: const Color(0xFF87C495),
                      fontSize: deviceHeight * 0.05,
                      fontWeight: FontWeight.bold,
                      fontFamily: "源ノ角ゴシック VF",
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                    BodyText(
                      text: "生理中のパートナーのお悩み質問アプリ「TOMONY」は、生理中のパートナーがいる方の",
                      color: Colors.black,
                      fontSize: deviceHeight * 0.02,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Noto Sans JP",
                    ),
                    BodyText(
                      text: "悩みや問題を、それぞれのパートナーの関係性を明確にできる質問項目に沿って",
                      color: Colors.black,
                      fontSize: deviceHeight * 0.02,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Noto Sans JP",
                    ),
                    BodyText(
                      text: "生理の知識や解決策を気軽に質問することができるアプリです。",
                      color: Colors.black,
                      fontSize: deviceHeight * 0.02,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Noto Sans JP",
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                  ],
                ),
                WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                ImageWidget(
                  heightTarget: deviceHeight,
                  widthTarget: deviceWidth,
                  heightValue: 0.9,
                  widthValue: 0.3,
                  imagePath: "https://i.imgur.com/8um6Loj.png",
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.heightTarget,
    required this.widthTarget,
    required this.heightValue,
    required this.widthValue,
    required this.imagePath,
  }) : super(key: key);

  final double heightTarget;
  final double widthTarget;
  final double heightValue;
  final double widthValue;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightTarget * heightValue,
      // width: widthTarget * widthValue,
      child: Image.network(
        imagePath,
      ),
    );
  }
}
