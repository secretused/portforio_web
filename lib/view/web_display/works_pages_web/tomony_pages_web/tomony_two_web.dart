import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// コンセプトとイメージ
class TomonyTwo extends StatelessWidget {
  const TomonyTwo({
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
                text: "生理中の彼女への複雑な感情を",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "Noto Sans JP",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.01),
              BodyText(
                text: "言語化できるお悩み質問アプリ",
                color: const Color.fromRGBO(135, 196, 149, 1),
                fontSize: deviceHeight * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "Noto Sans JP",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              HighPaddingText(
                text:
                    "男性向けの生理のお悩み質問相談アプリ「TOMONY」は、生理中の彼女がいる\n男性の悩みや問題を、それぞれのカップルの関係性や状況を明確にできる質問\n項目に沿って、生理の知識や解決策を気軽に質問することができるアプリです。",
                color: Colors.black,
                fontSize: deviceHeight * 0.02,
                fontWeight: FontWeight.normal,
                fontFamily: "Noto Sans JP",
                textAlign: TextAlign.start,
                paddingValue: 1.5,
              ),
            ],
          ),
          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
          const ImagesWidget(
            heightValue: 0.9,
            imagePath: "assets/tomony/tomony_concept.png",
          ),
        ],
      ),
    );
  }
}
