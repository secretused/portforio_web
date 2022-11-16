import 'package:flutter/material.dart';

import '../../utils/AboutWidget/about_widget.dart';
import '../../utils/extract_widget.dart';

class AboutThree extends StatelessWidget {
  const AboutThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // 左サイド
          SizedBox(
            width: deviceWidth * 0.32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: deviceHeight * 0.2,
                      width: deviceHeight * 0.2,
                      child: Image.network(
                        "https://i.imgur.com/tckg49G.jpg",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BodyText(
                            text: "Yuta Toba",
                            color: const Color.fromRGBO(0, 0, 0, 0.8),
                            fontFamily: 'Nasu',
                            fontSize: deviceHeight * 0.02,
                            fontWeight: FontWeight.bold,
                          ),
                          BodyText(
                            text: "鳥羽悠太",
                            color: const Color.fromRGBO(0, 0, 0, 0.8),
                            fontFamily: 'Nasu',
                            fontSize: deviceHeight * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                          HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                          BodyText(
                            text: "Vantanテックフォードアカデミー",
                            color: const Color.fromRGBO(0, 0, 0, 0.8),
                            fontFamily: '源ノ角ゴシック VF',
                            fontSize: deviceHeight * 0.02,
                            fontWeight: FontWeight.normal,
                          ),
                          BodyText(
                            text: "専門学部 IT総合学科 UIUXクラス",
                            color: const Color.fromRGBO(0, 0, 0, 0.8),
                            fontFamily: '',
                            fontSize: deviceHeight * 0.02,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                // 強み
                SmallTitleUnderline(
                  smallTitle: '強み',
                  sizeValue: 0.03,
                  lineLength: deviceWidth * 0.32,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // 戦略
                      Column(
                        children: const [
                          StrengthTopic(
                            topicTitle: '戦略',
                            icon: Icons.search,
                          ),
                          FiveLevelEvaluation(
                            one: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            two: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            three: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            four: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            five: FalseCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                          )
                        ],
                      ),
                      // 表層
                      Column(
                        children: const [
                          StrengthTopic(
                            topicTitle: '表層',
                            icon: Icons.brush,
                          ),
                          FiveLevelEvaluation(
                            one: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            two: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            three: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            four: FalseCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            five: FalseCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                          )
                        ],
                      ),
                      // 技術
                      Column(
                        children: const [
                          StrengthTopic(
                            topicTitle: '技術',
                            icon: Icons.computer,
                          ),
                          FiveLevelEvaluation(
                            one: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            two: TrueCircle(
                                sizeValue: 0.02, color: Color(0xFF919191)),
                            three: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            four: TrueCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                            five: FalseCircle(
                              sizeValue: 0.02,
                              color: Color(0xFF919191),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                // スキル
                SmallTitleUnderline(
                  smallTitle: 'スキル',
                  sizeValue: 0.03,
                  lineLength: deviceWidth * 0.32,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: deviceHeight * 0.02, bottom: deviceHeight * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SkillText(text: 'Ai', fontValue: 0.07),
                      SkillText(text: 'Ps', fontValue: 0.07),
                      SkillText(text: 'Xd', fontValue: 0.07),
                      SkilIcon(imagePath: 'assets/figma.svg'),
                      SkilIcon(imagePath: 'assets/flutter.svg'),
                      SkilIcon(imagePath: 'assets/python.svg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          WidthSizedBox(targetSize: deviceWidth, value: 0.06),
          SizedBox(
            width: deviceWidth * 0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 自分年表
                Padding(
                  padding: EdgeInsets.only(bottom: deviceHeight * 0.03),
                  child: SmallTitleUnderline(
                    smallTitle: '自分年表',
                    sizeValue: 0.03,
                    lineLength: deviceWidth * 0.23,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: deviceWidth * 0.003),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      MyHistoryTopic(
                        circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                        time: '2019.3',
                        event: '岡崎城西高等学校中途退学',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        heightValue: 0.05,
                      ),
                      MyHistoryTopic(
                        circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                        time: '2020.1',
                        event: 'Langara College LEAP(Canada)入学',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        heightValue: 0.05,
                      ),
                      MyHistoryTopic(
                        circleColor: Color.fromRGBO(3, 144, 126, 1),
                        time: '2021.4',
                        event: 'Vantanテックフォードアカデミー入学',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        heightValue: 0.05,
                      ),
                      MyHistoryTopic(
                        circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                        time: '2021.7',
                        event: 'Kindle短編小説集「混沌」出版',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        heightValue: 0.05,
                      ),
                      MyHistoryTopic(
                        circleColor: Color.fromRGBO(3, 144, 126, 1),
                        time: '2021.12',
                        event: '東京メトロ「Metro Ad Creative Award」作品応募',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        heightValue: 0.05,
                      ),
                      MyHistoryTopic(
                        circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                        time: '2022.2',
                        event: 'OpenSea NFTコンテンツ 販売',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        heightValue: 0.05,
                      ),
                      MyHistoryTopic(
                        circleColor: Color.fromRGBO(3, 144, 126, 1),
                        time: '2022.5',
                        event: '入館管理アプリ「シュッ席」リリース',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        heightValue: 0.05,
                      ),
                      MyHistoryTopic(
                        circleColor: Color.fromRGBO(3, 144, 126, 1),
                        time: '2022.7',
                        event: 'エヌ次元株式会社 アルバイト 入社',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}