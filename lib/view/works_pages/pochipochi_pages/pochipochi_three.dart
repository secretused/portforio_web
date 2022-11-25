import 'package:flutter/material.dart';

import '../../../utils/project_widget/about_widget.dart';
import '../../../../utils/extract_widget.dart';
import '../../../utils/project_widget/works_widget.dart';

// 背景・リサーチ
class PochipochiThree extends StatelessWidget {
  const PochipochiThree({
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceWidth * 0.9,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "背景",
                              color: const Color(0xFFEBAA14),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "「幼児向けアプリが少ないから作ってほしい」",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.03,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "源ノ角ゴシック VF",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  BodyText(
                                    text:
                                        "アプリ開発を始めた頃に彼女からの要求があり、自分はその言葉に少し耳を疑いました。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  BodyText(
                                    text:
                                        "飽和に近い状態の幼児向けアプリでどうして少ないと感じているのか？と疑問に思いました。実際に、彼女の",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  BodyText(
                                    text:
                                        "姪っ子はアプリよりYoutubeでの動画視聴をメインに楽しんでいるため、要求に興味を持ち、制作に至った。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                ],
                              ),
                            ),
                            BodyText(
                              text: "仮説",
                              color: const Color(0xFFEBAA14),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ShadowContainerText(
                                    deviceHeight: deviceHeight,
                                    text: '幼児アプリは数も多く、やはり十分なものが揃っているのではないか？',
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  ShadowContainerText(
                                    deviceHeight: deviceHeight,
                                    text: '幼児は飽きやすく、1つのものを長く使えないのでは？',
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const ImageWidget(
                          heightValue: 0.3,
                          widthValue: 0.3,
                          imagePath: "https://i.imgur.com/J7MEDOp.png",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: deviceWidth * 0.9,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: deviceHeight * 0.03,
                      right: deviceHeight * 0.03,
                      left: deviceHeight * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BodyText(
                            text: "インタビュー",
                            color: const Color(0xFFEBAA14),
                            fontSize: deviceHeight * 0.028,
                            fontWeight: FontWeight.bold,
                            fontFamily: "源ノ角ゴシック VF",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: deviceHeight * 0.03),
                            child: Row(
                              children: [
                                Column(
                                  children: const [
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFFEBAA14),
                                    ),
                                    VerticalLine(
                                      heightPadding: 0.01,
                                      heightValue: 0.05,
                                      lineColor: Color(0xFFEBAA14),
                                    ),
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFFEBAA14),
                                    ),
                                    VerticalLine(
                                      heightPadding: 0.01,
                                      heightValue: 0.05,
                                      lineColor: Color(0xFFEBAA14),
                                    ),
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFFEBAA14),
                                    ),
                                    VerticalLine(
                                      heightPadding: 0.01,
                                      heightValue: 0.05,
                                      lineColor: Color(0xFFEBAA14),
                                    ),
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFFEBAA14),
                                    ),
                                  ],
                                ),
                                WidthSizedBox(
                                    targetSize: deviceWidth, value: 0.01),
                                SizedBox(
                                  height: deviceHeight * 0.3,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      ProcessDetail(
                                        process: "ターゲットと仮説立案",
                                        detail: "課題と疑問の真相を確かめる",
                                      ),
                                      ProcessDetail(
                                        process: "インタビュー",
                                        detail: "女性の方数名に実施",
                                      ),
                                      ProcessDetail(
                                        process: "調査(インターネット)",
                                        detail: "幼児アプリについての意見を調査",
                                      ),
                                      ProcessDetail(
                                        process: "分析",
                                        detail: "結果をもとに課題を抽出",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                      SizedBox(
                        height: deviceHeight * 0.3,
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
                                  text: "現時点での疑問",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "なぜ幼児アプリが少ないと思っているのか？",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                LongText(
                                  text:
                                      "本当に幼児はアプリに飽きてしまっているのか、\nカスタマイズ性を求めているのか？",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.center,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                LongText(
                                  text: "保護者目線では幼児の興味・関心の動向を\nどう捉えているだろうか？",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                      SizedBox(
                        height: deviceHeight * 0.3,
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
                                  text: "課題発見前の仮説",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                LongText(
                                  text:
                                      "Youtubeの方が既に満足しているように見受けられるが、\nなぜそれでもアプリが必要なのかが鍵なのでは？",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.center,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                LongText(
                                  text:
                                      "幼児それぞれの興味・関心にあったベストな\nコンテンツを含んだアプリがないのでは？",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
