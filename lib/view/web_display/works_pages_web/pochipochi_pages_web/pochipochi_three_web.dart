import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

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
      height: deviceHeight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceHeight * 0.55,
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
                                  SizedBox(
                                    width: deviceWidth * 0.38,
                                    child: HighPaddingText(
                                      text:
                                          "アプリ開発を始めた頃に彼女からの要望があり、自分はその言葉に少し耳を疑いました。飽和に近い状態の幼児向けアプリでどうして少ないと感じているのか？実際、彼女の2歳の姪はアプリより動画視聴を主に楽しんでいるため、要望に興味を持ち、制作に至りました。",
                                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                      paddingValue: 1.5,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ShadowContainerText(
                                        deviceHeight: deviceHeight,
                                        text: '幼児アプリは数も多く、十分なものが揃っているのでは？',
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.02),
                                      ShadowContainerText(
                                        deviceHeight: deviceHeight,
                                        text: '幼児は飽きやすく、1つのものを長く使えないのでは？',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const ImagesWidget(
                              heightValue: 0.175,
                              imagePath:
                                  "assets/pochipochi/pochipochi_overview.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
                          padding: EdgeInsets.all(deviceHeight * 0.035),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "なぜ幼児アプリが少ないと思っているのか？",
                                    color: const Color.fromRGBO(1, 1, 1, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.02),
                                  HighPaddingText(
                                    text:
                                        "本当に幼児はアプリに飽きてしまっているのか？\nカスタマイズ性を求めているのか？",
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
                                    text: "保護者目線では幼児の興味・関心の動向をどう\n捉えているのだろうか？",
                                    color: const Color.fromRGBO(1, 1, 1, 0.8),
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
                      ),
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                    SizedBox(
                      width: deviceWidth * 0.35,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(151, 151, 151, 0.1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(deviceHeight * 0.035),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HighPaddingText(
                                    text:
                                        "Youtubeで既に満足しているように見受けられるが\nそれでもなぜアプリが必要なのかが鍵になるのでは？",
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
                                        "幼児それぞれの興味・関心にあったベストな\nコンテンツを含んだアプリがないのでは？",
                                    color: const Color.fromRGBO(1, 1, 1, 0.8),
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
