import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// コンセプトとイメージ
class ShussekiTwo extends StatelessWidget {
  const ShussekiTwo({
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
                text: "QRコードをシュッと",
                color: const Color(0xFF379BA5),
                fontSize: deviceHeight * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.01),
              BodyText(
                text: "読み込むだけで出席完了",
                color: const Color(0xFF379BA5),
                fontSize: deviceHeight * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              HighPaddingText(
                text:
                    "QRコードで簡単入館「シュッ席」は、主に小規模団体向けに作られた\nオンライン入館管理アプリです。機材を導入できる予算がなくても\nスマートフォン一つで簡単にオンラインで管理することが出来ます。",
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
            // imagePath: "shusseki/shusseki_concept.png",
            imagePath: "https://i.imgur.com/WznCqNT.png",
          ),
        ],
      ),
    );
  }
}
