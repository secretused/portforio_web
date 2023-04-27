import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

import '../../../../utils/project_widget/web_design_widget.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class NzigenCorporateFive extends ConsumerWidget {
  const NzigenCorporateFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: deviceHeight * 2.1,
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
                        text: "事業案内・詳細ページ",
                        color: const Color(0xFF64CCF0),
                        fontSize: deviceHeight * 0.035,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Noto Sans JP",
                      ),
                      Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.03),
                        child: SizedBox(
                          height: deviceHeight * 0.61,
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
                                                  "・遷移後に得られる情報が少ない。文字のみの説明や、再び遷移しないと詳しく分からない。",
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
                                                  "・図や小タイトルなどを載せて、大事にしている考え方や差別化ポイントを書いた方が伝わりやすい。",
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
                                              imageWidthValue: 0.08,
                                              imagePath:
                                                  "assets/corporate/services_page/services_comparison_1.png",
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
                                                  "・特徴や強みとして押しているポイントが少なく、高い技術力を保持していないような雰囲気がある。",
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
                                                  "・業務フローや納品物が記載されているのは信頼感があり、とても良いと思う。",
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
                                              imageWidthValue: 0.053,
                                              imagePath:
                                                  "assets/corporate/services_page/services_comparison_2.png",
                                              imagePaddingValue: 0.05,
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
                                                  "・事業詳細の先頭にメリハリがなく、内容が変わったことに気づかず、目に入ってこない",
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
                                                  "・サービス内容の説明量とレイアウトのサイズが的確ではないため、項目ごとに並べるべき。",
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
                                                  "assets/corporate/services_page/services_comparison_3.png",
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
                        text: "事業案内・詳細ページ ワイヤーフレーム",
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
                              children: [
                                BodyText(
                                  text: "事業案内 ワイヤーフレーム",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.03,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                DialogmockUpWidget(
                                  mockUpImage:
                                      "assets/corporate/services_page/services_mockUp_2.png",
                                  mockUpimages: Column(
                                    children: const [
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_1.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_2.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_3.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_4.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_5.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_6.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_7.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_8.png"),
                                      ImageWidget(
                                          heightValue: 0.7325,
                                          imagePath:
                                              "assets/corporate/services_page/services_wireframe_9.png"),
                                    ],
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.04),
                                BodyText(
                                  text: "事業詳細 ワイヤーフレーム",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.03,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                DialogmockUpWidget(
                                  mockUpImage:
                                      "assets/corporate/services_page/services_mockUp_3.png",
                                  mockUpimages: Column(
                                    children: const [
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_detail_wireframe_1.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_detail_wireframe_2.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_detail_wireframe_3.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_detail_wireframe_4.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_detail_wireframe_5.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_detail_wireframe_6.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_detail_wireframe_7.png"),
                                      ImageWidget(
                                          heightValue: 0.5157,
                                          imagePath:
                                              "assets/corporate/services_page/services_detail_wireframe_8.png"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "現状の事業内容・詳細ページ",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.03,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                DialogmockUpWidget(
                                  mockUpImage:
                                      "assets/corporate/services_page/services_mockUp_1.png",
                                  mockUpimages: Column(
                                    children: const [
                                      ImageWidget(
                                          heightValue: 0.4,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_text.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_1.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_2.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_3.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_4.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_5.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_6.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_7.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_detail_1.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_detail_2.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_detail_3.png"),
                                      ImageWidget(
                                          heightValue: 0.8,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_detail_4.png"),
                                      ImageWidget(
                                          heightValue: 0.666,
                                          imagePath:
                                              "assets/corporate/services_page/services_site_detail_5.png"),
                                    ],
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.085),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const ImageWidget(
                                          heightValue: 0.2,
                                          imagePath:
                                              "assets/corporate/services_page/services_pickUp_1.png",
                                        ),
                                        WidthSizedBox(
                                            targetSize: deviceWidth,
                                            value: 0.01),
                                        const ImageWidget(
                                          heightValue: 0.2,
                                          imagePath:
                                              "assets/corporate/services_page/services_pickUp_2.png",
                                        ),
                                      ],
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.04),
                                    HighPaddingText(
                                      text:
                                          "・当社で解決できる事柄を事業内容ページの先頭に配置して\n　何ができるか・何が強みかをページを開いてすぐに把握していただく。",
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
                                          "・従来はメニューバーを展開しなければ、辿り着けなかったFAQを\n　末尾に設置して、新規顧客が1つのページで網羅できるように対応。",
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
