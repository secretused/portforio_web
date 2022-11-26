import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';

// コンセプトとイメージ
class PochipochiTwo extends StatelessWidget {
  const PochipochiTwo({
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
                text: "子供と一緒に成長していくアプリ",
                color: const Color(0xFFEBAA14),
                fontSize: deviceHeight * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              HighPaddingText(
                text:
                    "長く使える幼児向け音声再生アプリ「ぽちぽち」は、忙しくて付きっきりで\n幼児の面倒を見れない保護者の方が、お子さんの好きな音声・動画を設定し\n一つにまとめて簡単に楽しく再生・管理ができるアプリです。",
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
          const ImageWidget(
            heightValue: 0.9,
            imagePath: "https://i.imgur.com/oeL93ry.png",
          ),
        ],
      ),
    );
  }
}
