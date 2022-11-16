import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';

// デザイン・トンマナ
class TenPage extends StatelessWidget {
  const TenPage({
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                              children: [
                                ImageWidget(
                                  heightValue: 0.15,
                                  widthValue: 0,
                                  imagePath: "https://i.imgur.com/9gP3MSM.png",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "寄り添い合い、抱擁感のあるイメージ",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.1),
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
                                  Row(
                                    children: [
                                      Container(
                                        width: deviceHeight * 0.06,
                                        height: deviceHeight * 0.06,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(180),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  151, 151, 151, 0.3), //色
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              offset: Offset(-3, 3),
                                            ),
                                          ],
                                          color: const Color(0xFF87C495),
                                        ),
                                      ),
                                      WidthSizedBox(
                                          targetSize: deviceWidth, value: 0.01),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          BodyText(
                                            text: "#89C997",
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8),
                                            fontSize: deviceHeight * 0.02,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "Noto Sans JP",
                                          ),
                                          HeightSizedBox(
                                              targetSize: deviceHeight,
                                              value: 0.01),
                                          BodyText(
                                            text: "R: 135　G: 196　B: 149",
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8),
                                            fontSize: deviceHeight * 0.02,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "Noto Sans JP",
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.02),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: deviceHeight * 0.06,
                                        height: deviceHeight * 0.06,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(180),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  151, 151, 151, 0.3), //色
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              offset: Offset(-3, 3),
                                            ),
                                          ],
                                          color: const Color(0xFFF3A68C),
                                        ),
                                      ),
                                      WidthSizedBox(
                                          targetSize: deviceWidth, value: 0.01),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          BodyText(
                                            text: "#F3A68C",
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8),
                                            fontSize: deviceHeight * 0.02,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "Noto Sans JP",
                                          ),
                                          HeightSizedBox(
                                              targetSize: deviceHeight,
                                              value: 0.01),
                                          BodyText(
                                            text: "R: 243　G: 166　B: 140",
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8),
                                            fontSize: deviceHeight * 0.02,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "Noto Sans JP",
                                          ),
                                        ],
                                      ),
                                    ],
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
