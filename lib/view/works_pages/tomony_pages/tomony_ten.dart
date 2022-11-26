import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';
import '../../../utils/project_widget/works_widget.dart';

// デザイン・トンマナ
class TomonyTen extends StatelessWidget {
  const TomonyTen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
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
                text: "デザイン",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: deviceHeight * 0.05,
                    bottom: deviceHeight * 0.05,
                    left: deviceHeight * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "サービス名",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "TOMONY",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.08,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Arial Black",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  BodyText(
                                    text: "「辛い時こそともに」という意味",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  BodyText(
                                    text: "言いやすさとシンプルさで選びました",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.1),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "アイコン",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ImageWidget(
                                  heightValue: 0.15,
                                  imagePath: "https://i.imgur.com/9gP3MSM.png",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * 0.03),
                                  child: LongText(
                                    text: "2人で寄り添い合い\n抱擁感のあるイメージ",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.08),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "カラー",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * 0.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ColorDesignWidget(
                                    deviceHeight: deviceHeight,
                                    deviceWidth: deviceWidth,
                                    colorCode: "87C495",
                                    color: const Color(0xFF87C495),
                                    rgbColorModel: "R: 135　G: 196　B: 149",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.02),
                                  ColorDesignWidget(
                                    deviceHeight: deviceHeight,
                                    deviceWidth: deviceWidth,
                                    colorCode: "F3A68C",
                                    color: const Color(0xFFF3A68C),
                                    rgbColorModel: "R: 243　G: 166　B: 140",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.025),
                                  BodyText(
                                    text: "メインカラーはリラックス・自然体・協調性の",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  BodyText(
                                    text: "色言葉と、男性のイメージを持つ緑。パートナーで",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  BodyText(
                                    text: "ある女性の印象を持たせるためにアクセント",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  BodyText(
                                    text: "カラーはサーモンピンクにしました。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.08),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "フォント",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * 0.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      BodyText(
                                        text: "あ",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.04,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      WidthSizedBox(
                                          targetSize: deviceWidth, value: 0.01),
                                      BodyText(
                                        text: "Noto Sans JP",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.025,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                    ],
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  Row(
                                    children: [
                                      BodyText(
                                        text: "ロゴ",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.04,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Arial Black",
                                      ),
                                      WidthSizedBox(
                                          targetSize: deviceWidth, value: 0.01),
                                      BodyText(
                                        text: "Arial Black",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.025,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
