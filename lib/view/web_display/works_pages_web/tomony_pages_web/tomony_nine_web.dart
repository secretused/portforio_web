import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// 利便性と・持続性 & マネタイズ
class TomonyNine extends StatelessWidget {
  const TomonyNine({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "利便性と継続性",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.05,
                    horizontal: deviceHeight * 0.03),
                child: Row(
                  children: [
                    Column(
                      children: [
                        BodyText(
                          text: "恋愛初心者でも安心",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Sans JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        const ImageWidget(
                          heightValue: 0.13,
                          imagePath: "tomony/tomony_beginner.png",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        HighPaddingText(
                          text: "恋愛初心者の質問のハードルを下げるために\n質問フォームで初心者マークの有無を選べる",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Noto Sans JP",
                          textAlign: TextAlign.start,
                          paddingValue: 1.5,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.1),
                        BodyText(
                          text: "スコアを増やしてレベルアップ",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Sans JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        const ImageWidget(
                          heightValue: 0.2,
                          imagePath: "tomony/tomony_score.png",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        HighPaddingText(
                          text:
                              "質問・回答・ベストアンサーそれぞれでスコアを獲得\n一定のスコアに到達するとマスターになることができる",
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
          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "マネタイズ",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.05,
                    horizontal: deviceHeight * 0.03),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const ImageWidget(
                          heightValue: 0.3,
                          imagePath: "tomony/tomony_chip.png",
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        Column(
                          children: [
                            BodyText(
                              text: "チップ機能",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            HighPaddingText(
                              text: "質問にチップを付与可能\n10%の手数料を差し引きます",
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
                    HeightSizedBox(targetSize: deviceHeight, value: 0.05),
                    Row(
                      children: [
                        Column(
                          children: [
                            BodyText(
                              text: "マスターの特権",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            SizedBox(
                              width: deviceWidth * 0.25,
                              child: HighPaddingText(
                                text:
                                    "マスターは1回の質問の料金を設定できる。\n回答者はマスターを選び、料金を払うことで、マスターの高度な回答を得ることができる",
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                                textAlign: TextAlign.start,
                                paddingValue: 1.5,
                              ),
                            ),
                          ],
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        const ImageWidget(
                          heightValue: 0.3,
                          imagePath: "tomony/tomony_master.png",
                        ),
                      ],
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
