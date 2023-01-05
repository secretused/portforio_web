import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// UI設計
class ShussekiSeven extends StatelessWidget {
  const ShussekiSeven({
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
                text: "UI設計",
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
                          text: "ユーザーフローの確認",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        const ImageWidget(
                          heightValue: 0.7,
                          imagePath: "assets/shusseki/shusseki_userflow.png",
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BodyText(
                          text: "オブジェクトモデリング",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        const ImageWidget(
                          heightValue: 0.4,
                          imagePath: "assets/shusseki/shusseki_modeling.png",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        BodyText(
                          text: "ビューとナビゲーションの検討",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        const ImageWidget(
                          heightValue: 0.25,
                          imagePath: "assets/shusseki/shusseki_navigation.png",
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
