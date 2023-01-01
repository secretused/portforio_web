import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// 開発での感想
class ShussekiFive extends StatelessWidget {
  const ShussekiFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: deviceHeight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: deviceHeight * 0.03,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceWidth * 0.35,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(151, 151, 151, 0.1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(deviceHeight * 0.03),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              BodyText(
                                text: "なぜFlutterなのか？",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.025,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.025),
                              SizedBox(
                                width: deviceWidth * 0.29,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BodyText(
                                      text: "元々Swiftをやっていて、アプリ開発に興味があった",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.02),
                                    HighPaddingText(
                                      text:
                                          "iOS・Android・Webなど多様な開発を可能とし、\nWidgetが豊富に揃っており、学習コストが低いため",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                      textAlign: TextAlign.start,
                                      paddingValue: 1.5,
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.02),
                                    BodyText(
                                      text: "人気の言語というのもあり、成長度合いを感じたため",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                    SizedBox(
                      width: deviceWidth * 0.35,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(151, 151, 151, 0.1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(deviceHeight * 0.03),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              BodyText(
                                text: "開発で難しかった点",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.025,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.025),
                              SizedBox(
                                width: deviceWidth * 0.29,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BodyText(
                                      text: "データベースのデータを非同期処理で保存・受け取る",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.02),
                                    HighPaddingText(
                                      text: "リリースまわりの設定や、Flutter以外でのエラーに苦戦しました",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                      textAlign: TextAlign.start,
                                      paddingValue: 1.5,
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.02),
                                    HighPaddingText(
                                      text:
                                          "情報が少ないので海外の記事を読んだり、質問サイトで英語での質問をする必要があった",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                      textAlign: TextAlign.start,
                                      paddingValue: 1.5,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              WidthSizedBox(targetSize: deviceWidth, value: 0.015),
              SizedBox(
                width: deviceWidth * 0.45,
                height: deviceHeight * 0.57,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(151, 151, 151, 0.3), //色
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(1, 1),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: deviceHeight * 0.03,
                        bottom: deviceHeight * 0.02,
                        left: deviceHeight * 0.03,
                        right: deviceHeight * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "現状(2022年5月-12月)",
                              color: const Color(0xFF379BA5),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      BodyText(
                                        text: "ユーザー総数",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.01),
                                      BodyText(
                                        text: "126",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.04,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      BodyText(
                                        text: "入館総数(43団体)",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.01),
                                      BodyText(
                                        text: "459",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.04,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      BodyText(
                                        text: "アクティブユーザー(月)",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.01),
                                      BodyText(
                                        text: "25",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.04,
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
                        HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "課題点",
                              color: const Color(0xFF379BA5),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "ユーザー数は増えても、アクティブユーザーがいない",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.025,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.013),
                                  HighPaddingText(
                                    text:
                                        "入館するまでのフローが複雑なため、ユーザーが機能を使うまでに\nアプリから離脱してしまっている。",
                                    color: const Color.fromRGBO(1, 1, 1, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                    textAlign: TextAlign.start,
                                    paddingValue: 1.5,
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.03),
                                  BodyText(
                                    text: "機能の使い方が一目で分からない",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.025,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.013),
                                  HighPaddingText(
                                    text:
                                        "押してみるまでどうなるのかが予想できないUIなために\nユーザー任せなサービスとなってしまっている。\n例外処理も欠点が多く、ユーザーが離れる原因となっている。",
                                    color: const Color.fromRGBO(1, 1, 1, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                    textAlign: TextAlign.start,
                                    paddingValue: 1.5,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
