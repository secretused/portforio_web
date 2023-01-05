import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// インタビュー
class TomonyFour extends StatelessWidget {
  const TomonyFour({
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "インタビュー",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.028,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LongText(
                      text: "パートナーにどうして欲しいか？\n具体的にどう対応しているのか？",
                      color: Colors.black,
                      fontSize: deviceHeight * 0.03,
                      fontWeight: FontWeight.bold,
                      fontFamily: "源ノ角ゴシック VF",
                      textAlign: TextAlign.start,
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.05),
                    SizedBox(
                      width: deviceWidth * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceWidth * 0.28,
                            child: Column(
                              children: [
                                BodyText(
                                  text: "Aくん",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceWidth * 0.015,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 6.0,
                                    ),
                                  ),
                                  child: const ImageWidget(
                                    heightValue: 0.3,
                                    imagePath:
                                        "/assets/tomony/tomony_interview1.png",
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "そっとしておく・臨機応変に対応する",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                HighPaddingText(
                                  text:
                                      "生理中の症状などをあらかじめ自分から聞く\n男友達に近況を話すが不満は言わない\n面倒なのは嫌なため、わかったらそっとしてる",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "源ノ角ゴシック VF",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.28,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    BodyText(
                                      text: "Bくん",
                                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                                      fontSize: deviceWidth * 0.015,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: const Color(0xFF87C495),
                                      width: 6.0,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    children: [
                                      const ImageWidget(
                                        heightValue: 0.3,
                                        imagePath:
                                            "/assets/tomony/tomony_interview2.png",
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: deviceHeight * 0.005),
                                        child: BodyText(
                                          text: "強いニーズ",
                                          color: const Color(0xFF87C495),
                                          fontSize: deviceHeight * 0.03,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "源ノ角ゴシック VF",
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "当たられる・慣れてるから放置",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                HighPaddingText(
                                  text:
                                      "生理はどういうものかは把握している\nどうにもならないなら、経験がありそうな男女に\n聞く。相談は解決するというより心が楽になる\n人に聞くと俯瞰して意見を聞ける\n自己理解をし、共有することが大事だと思う",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "源ノ角ゴシック VF",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.28,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "Cくん",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceWidth * 0.015,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 6.0,
                                    ),
                                  ),
                                  child: const ImageWidget(
                                    heightValue: 0.3,
                                    imagePath:
                                        "/assets/tomony/tomony_interview3.png",
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "男性陣が我慢する・しょうがない",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                HighPaddingText(
                                  text:
                                      "生理に関することを付き合う段階で全て調べた\n一方的に怒られるが、好きだからイライラしない\n不満があったら彼女と話しあう\nバレると怒られるのが嫌なため、相談はしない",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "源ノ角ゴシック VF",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
