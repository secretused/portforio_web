import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// UI改修後　UI
class ShussekiSeven extends StatelessWidget {
  const ShussekiSeven({
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
                text: "UIの変化",
                color: const Color(0xFF379BA5),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyText(
                          text: "Before",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const ImageWidget(
                              heightValue: 0.33,
                              imagePath: "https://i.imgur.com/sPpXecU.png",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.33,
                              imagePath: "https://i.imgur.com/BYjCQss.png",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.33,
                              imagePath: "https://i.imgur.com/ihV37xj.png",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.33,
                              imagePath: "https://i.imgur.com/2DzJX8r.png",
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        Container(
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          height: 0.1,
                          width: deviceWidth * 0.47,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        BodyText(
                          text: "After",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const ImageWidget(
                              heightValue: 0.33,
                              imagePath: "https://i.imgur.com/zbpIv7k.png",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.33,
                              imagePath: "https://i.imgur.com/ZZd5lXL.png",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.33,
                              imagePath: "https://i.imgur.com/zUphl8Y.png",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.33,
                              imagePath: "https://i.imgur.com/0LAsoFt.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                        Row(
                          children: [
                            const ImageWidget(
                              heightValue: 0.45,
                              imagePath: "https://i.imgur.com/zbpIv7k.png",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.45,
                              imagePath: "https://i.imgur.com/zUphl8Y.png",
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                        HighPaddingText(
                          text:
                              "・一目見て分かる程ひどいタスクベースな画面から\n　オブジェクトとアクションを取り出し、まとめ上げたことにより\n　画面遷移数を大幅に減少させることが出来ました。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Noto Sans JP",
                          textAlign: TextAlign.start,
                          paddingValue: 1.3,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        HighPaddingText(
                          text:
                              "・分散していた組織情報を一画面に集約し、入館のかなめとなる\n　QRコードを常に表示することで、入館スピードの向上を図りました。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Noto Sans JP",
                          textAlign: TextAlign.start,
                          paddingValue: 1.3,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        HighPaddingText(
                          text:
                              "・優先度はそれほど高くない、組織構成のそれぞれの要素を\n　絞り込み機能で切り替えることによって、余計なタブを増やさずに\n　組織オブジェクト内に納めることが出来ました。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Noto Sans JP",
                          textAlign: TextAlign.start,
                          paddingValue: 1.3,
                        ),
                      ],
                    ),
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
