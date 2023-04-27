import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

import '../../../../utils/project_widget/web_design_widget.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class NzigenCorporateFour extends ConsumerWidget {
  const NzigenCorporateFour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: deviceHeight * 2,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BodyText(
                        text: "Topページ",
                        color: const Color(0xFF64CCF0),
                        fontSize: deviceHeight * 0.035,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Noto Sans JP",
                      ),
                      Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.03),
                        child: SizedBox(
                          height: deviceHeight * 0.57,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceWidth * 0.2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(
                                            151, 151, 151, 0.3), //色
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(1, 1),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(deviceHeight * 0.03),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BodyText(
                                          text: "構成",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.028,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.03),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            HighPaddingText(
                                              text:
                                                  "・サイトを開いたら、すぐにリンク先に飛ばなければならず、記憶に残る情報がない",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.023,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                              paddingValue: 1.5,
                                              textAlign: TextAlign.start,
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.03),
                                            HighPaddingText(
                                              text:
                                                  "・文字量も多く、文字とイラストの配置も複雑なため、リンクを踏む気が起きない",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.023,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                              paddingValue: 1.5,
                                              textAlign: TextAlign.start,
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.03),
                                            BodyText(
                                              text: "参考画像",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            const DialogImageWidget(
                                              imageWidthValue: 0.1,
                                              imagePath:
                                                  "assets/corporate/top_page/top_comparison_1.png",
                                              imagePaddingValue: 0.15,
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.03),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              WidthSizedBox(
                                  targetSize: deviceWidth, value: 0.03),
                              SizedBox(
                                width: deviceWidth * 0.2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(
                                            151, 151, 151, 0.3), //色
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(1, 1),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(deviceHeight * 0.03),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BodyText(
                                          text: "コンテンツ",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.028,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.03),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            HighPaddingText(
                                              text:
                                                  "・Topページとしては情報量も要素も少なく、技量が伺えない",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.023,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                              paddingValue: 1.5,
                                              textAlign: TextAlign.start,
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.03),
                                            HighPaddingText(
                                              text:
                                                  "・小タイトルもなく、ポイントとなる言葉が見当たらない",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.023,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                              paddingValue: 1.5,
                                              textAlign: TextAlign.start,
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.03),
                                            HighPaddingText(
                                              text:
                                                  "・関係性が特に見えてこない低画質な画像によって、企業の透明性が低く信頼感がない",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.023,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                              paddingValue: 1.5,
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              WidthSizedBox(
                                  targetSize: deviceWidth, value: 0.03),
                              SizedBox(
                                width: deviceWidth * 0.2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(
                                            151, 151, 151, 0.3), //色
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(1, 1),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(deviceHeight * 0.03),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BodyText(
                                          text: "デザイン",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.028,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.03),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            HighPaddingText(
                                              text:
                                                  "・ただ字を書いているだけなため、HPというよりは見にくい資料という印象を感じる。",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.023,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                              paddingValue: 1.5,
                                              textAlign: TextAlign.start,
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.03),
                                            HighPaddingText(
                                              text:
                                                  "・右上で展開したナビゲーションメニューと、展開後のメニューが離れていて利便性が悪い",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.023,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                              paddingValue: 1.5,
                                              textAlign: TextAlign.start,
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.03),
                                            BodyText(
                                              text: "参考画像",
                                              color: Colors.black,
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            const DialogImageWidget(
                                              imageWidthValue: 0.1,
                                              imagePath:
                                                  "assets/corporate/top_page/top_comparison_2.png",
                                              imagePaddingValue: 0.15,
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.03),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BodyText(
                        text: "Topページ ワイヤーフレーム",
                        color: const Color(0xFF64CCF0),
                        fontSize: deviceHeight * 0.035,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Noto Sans JP",
                      ),
                      HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                      Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.03),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "ワイヤーフレーム",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.03,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                DialogmockUpWidget(
                                  mockUpImage:
                                      "assets/corporate/top_page/top_mockUp_2.png",
                                  mockUpimages: Column(
                                    children: const [
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_wireframe_1.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_wireframe_2.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_wireframe_3.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_wireframe_4.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_wireframe_5.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_wireframe_6.png"),
                                      ImageWidget(
                                          heightValue: 0.3625,
                                          imagePath:
                                              "assets/corporate/top_page/top_wireframe_7.png"),
                                    ],
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.04),
                                BodyText(
                                  text: "現状のTopページ",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.03,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                DialogmockUpWidget(
                                  mockUpImage:
                                      "assets/corporate/top_page/top_mockUp_1.png",
                                  mockUpimages: Column(
                                    children: const [
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_site_1.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_site_2.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_site_3.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_site_4.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/top_page/top_site_5.png"),
                                      ImageWidget(
                                          heightValue: 0.765,
                                          imagePath:
                                              "assets/corporate/top_page/top_site_6.png"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.045),
                                Row(
                                  children: [
                                    const ImageWidget(
                                      heightValue: 0.2,
                                      imagePath:
                                          "assets/corporate/top_page/top_pickUp_1.png",
                                    ),
                                    WidthSizedBox(
                                        targetSize: deviceWidth, value: 0.01),
                                    const ImageWidget(
                                      heightValue: 0.2,
                                      imagePath:
                                          "assets/corporate/top_page/top_pickUp_2.png",
                                    ),
                                  ],
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.04),
                                HighPaddingText(
                                  text:
                                      "・当社の強みや事業内容を先頭に配置し、事業内容ごとに\n　記載することで何の会社なのかをまず把握していただく。",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.025),
                                HighPaddingText(
                                  text:
                                      "・一つ一つの項目に画像を設置することで、企業の透明性と\n　まとまりを作り、企業への信頼感を上げる。",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.025),
                                HighPaddingText(
                                  text:
                                      "・従来は、メニューバーを開かないと辿り着けなかった\n　採用情報やお問い合わせフォームを設置して、サイト\n　ターゲットへの利便性の向上と動線の確保を行う。",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
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
        ],
      ),
    );
  }
}
