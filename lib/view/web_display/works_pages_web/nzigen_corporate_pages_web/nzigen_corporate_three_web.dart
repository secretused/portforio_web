import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

import '../../../../utils/project_widget/works_widget.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class NzigenCorporateThree extends ConsumerWidget {
  const NzigenCorporateThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: deviceHeight,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BodyText(
                    text: "ヒューリスティック分析",
                    color: const Color(0xFF64CCF0),
                    fontSize: deviceHeight * 0.035,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans JP",
                  ),
                  Padding(
                    padding: EdgeInsets.all(deviceHeight * 0.03),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
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
                            padding: EdgeInsets.all(deviceHeight * 0.03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "実施概要",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.03),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TitleAndTextWidget(
                                      title: "調査方法",
                                      widget: HighPaddingText(
                                        text: "競合サイトと見比べヒューリスティック分析",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.5,
                                      ),
                                      textColor: const Color(0xFF64CCF0),
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.03),
                                    TitleAndTextWidget(
                                      title: "実施目的",
                                      widget: HighPaddingText(
                                        text: "弊社コーポレートサイトの課題点の発見",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.5,
                                      ),
                                      textColor: const Color(0xFF64CCF0),
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.03),
                                    TitleAndTextWidget(
                                      title: "サイト戦略",
                                      widget: HighPaddingText(
                                        text: "当社の技術や強みを全面に押し出す",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.5,
                                      ),
                                      textColor: const Color(0xFF64CCF0),
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.03),
                                    TitleAndTextWidget(
                                      title: "サイト最重要目的",
                                      widget: BodyText(
                                        text: "実務経験者の求人応募を増やすこと",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      textColor: const Color(0xFF64CCF0),
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.03),
                                    TitleAndTextWidget(
                                      title: "サイトターゲット",
                                      widget: BodyText(
                                        text: "アルバイトなどを指導できる実務経験者",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      textColor: const Color(0xFF64CCF0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        SizedBox(
                          width: deviceWidth * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
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
                                  padding: EdgeInsets.all(deviceHeight * 0.03),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BodyText(
                                        text: "評価項目",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.028,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.03),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              BodyText(
                                                text: "会社概要",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                              HeightSizedBox(
                                                  targetSize: deviceHeight,
                                                  value: 0.015),
                                              BodyText(
                                                text: "強み・特徴",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                              HeightSizedBox(
                                                  targetSize: deviceHeight,
                                                  value: 0.015),
                                              BodyText(
                                                text: "開発実績",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                              HeightSizedBox(
                                                  targetSize: deviceHeight,
                                                  value: 0.015),
                                              BodyText(
                                                text: "業務内容",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                              HeightSizedBox(
                                                  targetSize: deviceHeight,
                                                  value: 0.015),
                                              BodyText(
                                                text: "福利厚生",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                            ],
                                          ),
                                          WidthSizedBox(
                                              targetSize: deviceWidth,
                                              value: 0.02),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              BodyText(
                                                text: "会社の雰囲気が最初のイメージが定まるため",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                              HeightSizedBox(
                                                  targetSize: deviceHeight,
                                                  value: 0.015),
                                              BodyText(
                                                text: "企業の差別化を測るうえで一番重要な点なため",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                              HeightSizedBox(
                                                  targetSize: deviceHeight,
                                                  value: 0.015),
                                              BodyText(
                                                text:
                                                    "取引検討者や求職者が会社への信頼感を測る点なため",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                              HeightSizedBox(
                                                  targetSize: deviceHeight,
                                                  value: 0.015),
                                              BodyText(
                                                text: "求職者の重要閲覧ポイントとして認識",
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.8),
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: "Noto Sans JP",
                                              ),
                                              HeightSizedBox(
                                                  targetSize: deviceHeight,
                                                  value: 0.015),
                                              BodyText(
                                                text: "求職者の重要閲覧ポイントとして認識",
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
                                    ],
                                  ),
                                ),
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.03),
                              SizedBox(
                                width: deviceWidth * 0.4,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BodyText(
                                          text: "アルバイト応募時のエピソード",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.025,
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
                                            BodyText(
                                              text:
                                                  "・求人サイトの説明の期待度とHPの充実度に差があるが大丈夫か？",
                                              color: const Color.fromRGBO(
                                                  1, 1, 1, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.02),
                                            BodyText(
                                              text: "・本当に実績のあるWeb・アプリ制作会社なのか？",
                                              color: const Color.fromRGBO(
                                                  1, 1, 1, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.02),
                                            HighPaddingText(
                                              text: "・写真とかないけどちゃんとした会社なのか？",
                                              color: const Color.fromRGBO(
                                                  1, 1, 1, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Noto Sans JP",
                                              textAlign: TextAlign.start,
                                              paddingValue: 1.5,
                                            ),
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
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
