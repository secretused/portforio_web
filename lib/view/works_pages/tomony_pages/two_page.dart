import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';

// コンセプトとイメージ
class TwoPage extends StatelessWidget {
  const TwoPage({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "生理中のパートナーへの複雑な感情を",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.01),
              BodyText(
                text: "言語化できるお悩み質問アプリ",
                color: const Color.fromRGBO(135, 196, 149, 1),
                fontSize: deviceHeight * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.04),
              BodyText(
                text: "生理中のパートナーのお悩み質問アプリ「TOMONY」は、生理中のパートナーがいる方の",
                color: Colors.black,
                fontSize: deviceHeight * 0.02,
                fontWeight: FontWeight.normal,
                fontFamily: "Noto Sans JP",
              ),
              BodyText(
                text: "悩みや問題を、それぞれのパートナーの関係性を明確にできる質問項目に沿って",
                color: Colors.black,
                fontSize: deviceHeight * 0.02,
                fontWeight: FontWeight.normal,
                fontFamily: "Noto Sans JP",
              ),
              BodyText(
                text: "生理の知識や解決策を気軽に質問することができるアプリです。",
                color: Colors.black,
                fontSize: deviceHeight * 0.02,
                fontWeight: FontWeight.normal,
                fontFamily: "Noto Sans JP",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
            ],
          ),
          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
          const ImageWidget(
            heightValue: 0.9,
            widthValue: 0.3,
            imagePath: "https://i.imgur.com/P1zdOQu.png",
          ),
        ],
      ),
    );
  }
}