import 'package:flutter/material.dart';

import '../../../utils/extract_widget.dart';

class AboutFiveIPad extends StatelessWidget {
  const AboutFiveIPad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "Strength",
                color: const Color.fromRGBO(3, 144, 126, 1),
                fontSize: deviceWidth * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "Bebas Neue",
              ),
              BodyText(
                text: "私が価値創出できる3つの強み",
                color: Colors.black,
                fontSize: deviceWidth * 0.03,
                fontWeight: FontWeight.normal,
                fontFamily: "Noto Sans JP",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.04),
              BodyText(
                text: "Business",
                color: const Color.fromRGBO(151, 151, 151, 1),
                fontSize: deviceWidth * 0.04,
                fontWeight: FontWeight.bold,
                fontFamily: "MS ゴシック",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.01),
              HighPaddingText(
                text:
                    "専門学校の授業のひとつのアートシンキングでは\n物事への価値創出を考えることを始めとし\nビジネスコンテストに参加し、チームマネジメントの大切さを学びました。\nマネジメントでは、アルバイト先でディレクターアシスタントとして\n会社の価値を常に忘れずに日々業務を行なっております。",
                color: const Color.fromRGBO(0, 0, 0, 0.8),
                fontSize: deviceWidth * 0.02,
                fontWeight: FontWeight.normal,
                fontFamily: "Noto Sans JP",
                textAlign: TextAlign.center,
                paddingValue: 1.5,
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.04),
              BodyText(
                text: "Design",
                color: const Color.fromRGBO(151, 151, 151, 1),
                fontSize: deviceWidth * 0.04,
                fontWeight: FontWeight.bold,
                fontFamily: "MS ゴシック",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.01),
              HighPaddingText(
                text:
                    "現役のデザイナーの方々からの講義で、考え方をインプットし\n戦略から表層まで、HCDの観点で\n常にユーザーを思い続けることを意識しております。\n直接リサーチを行い、本質的な価値を見極めることを日々心がけ\nOOUIをベースにUI設計までを行えるのが強みです。",
                color: const Color.fromRGBO(0, 0, 0, 0.8),
                fontSize: deviceWidth * 0.02,
                fontWeight: FontWeight.normal,
                fontFamily: "Noto Sans JP",
                textAlign: TextAlign.center,
                paddingValue: 1.5,
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.04),
              BodyText(
                text: "Programming",
                color: const Color.fromRGBO(151, 151, 151, 1),
                fontSize: deviceWidth * 0.04,
                fontWeight: FontWeight.bold,
                fontFamily: "MS ゴシック",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.01),
              HighPaddingText(
                text:
                    "個人的にアプリケーション開発を学び\n構想だけで終わらないプロジェクトを実装しております。\nDartのフレームワークである\nFlutterを用いたアプリ開発・リリース経験があります。",
                color: const Color.fromRGBO(0, 0, 0, 0.8),
                fontSize: deviceWidth * 0.02,
                fontWeight: FontWeight.normal,
                fontFamily: "Noto Sans JP",
                textAlign: TextAlign.center,
                paddingValue: 1.5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
