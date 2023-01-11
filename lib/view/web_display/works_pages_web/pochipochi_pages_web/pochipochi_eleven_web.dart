import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// マネタイズ
class PochipochiEleven extends StatelessWidget {
  const PochipochiEleven({
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
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: deviceWidth * 0.67,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BodyText(
                      text: "マネタイズ",
                      color: const Color(0xFFEBAA14),
                      fontSize: deviceHeight * 0.035,
                      fontWeight: FontWeight.bold,
                      fontFamily: "源ノ角ゴシック VF",
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceHeight * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImagesWidget(
                            heightValue: 0.25,
                            imagePath:
                                "assets/pochipochi/pochipochi_premiumPlan.png",
                          ),
                          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BodyText(
                                text: "ステージ・アイコン増加",
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: deviceHeight * 0.03,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.01),
                              HighPaddingText(
                                text:
                                    "ステージ数と音声・動画を登録できるアイコン数の上限を\n1個からパック売りまで、お好きなように増やせます\n支払いは各ストア決済で簡単に購入が可能です",
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
              ),
              HeightSizedBox(targetSize: deviceWidth, value: 0.01),
              SizedBox(
                width: deviceWidth * 0.67,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BodyText(
                      text: "デザイン",
                      color: const Color(0xFFEBAA14),
                      fontSize: deviceHeight * 0.035,
                      fontWeight: FontWeight.bold,
                      fontFamily: "源ノ角ゴシック VF",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceHeight * 0.05,
                          bottom: deviceHeight * 0.05,
                          left: deviceHeight * 0.05),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BodyText(
                                text: "サービス名",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.028,
                                fontWeight: FontWeight.bold,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: deviceWidth * 0.02),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BodyText(
                                      text: "ぽちぽち",
                                      color: Colors.black,
                                      fontSize: deviceHeight * 0.08,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "しあさって",
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.01),
                                    HighPaddingText(
                                      text: "幼児は押すよりは優しく弾いたり\n連打のような豪快さから命名",
                                      color: const Color.fromRGBO(0, 0, 0, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                      textAlign: TextAlign.start,
                                      paddingValue: 1.5,
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.015),
                                    HighPaddingText(
                                      text:
                                          "幼児の言いやすいパ行とタ行を\n反復させることで、いち早くアプリを\n覚えてもらい、保護者の方にも幼児が\n何をしたいのか伝わりやすくする",
                                      color: const Color.fromRGBO(0, 0, 0, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                      textAlign: TextAlign.start,
                                      paddingValue: 1.5,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BodyText(
                                text: "カラー",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.028,
                                fontWeight: FontWeight.bold,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: deviceWidth * 0.02),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ColorDesignWidget(
                                      deviceHeight: deviceHeight,
                                      deviceWidth: deviceWidth,
                                      colorCode: "EBAA14",
                                      color: const Color(0xFFEBAA14),
                                      rgbColorModel: "R: 235　G: 170　B: 20",
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.02),
                                    ColorDesignWidget(
                                      deviceHeight: deviceHeight,
                                      deviceWidth: deviceWidth,
                                      colorCode: "3E97FF",
                                      color: const Color(0xFF3E97FF),
                                      rgbColorModel: "R: 62　G: 151　B: 255",
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.02),
                                    ColorDesignWidget(
                                      deviceHeight: deviceHeight,
                                      deviceWidth: deviceWidth,
                                      colorCode: "534025",
                                      color: const Color(0xFF534025),
                                      rgbColorModel: "R: 83　G: 64　B: 37",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BodyText(
                                text: "フォント",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.028,
                                fontWeight: FontWeight.bold,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: deviceWidth * 0.02),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        BodyText(
                                          text: "あ",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.04,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Potta One",
                                        ),
                                        WidthSizedBox(
                                            targetSize: deviceWidth,
                                            value: 0.01),
                                        BodyText(
                                          text: "Potta One",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.025,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Potta One",
                                        ),
                                      ],
                                    ),
                                    HeightSizedBox(
                                        targetSize: deviceHeight, value: 0.01),
                                    Row(
                                      children: [
                                        BodyText(
                                          text: "ロゴ",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.04,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "しあさって",
                                        ),
                                        WidthSizedBox(
                                            targetSize: deviceWidth,
                                            value: 0.01),
                                        BodyText(
                                          text: "しあさって",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.025,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "しあさって",
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
