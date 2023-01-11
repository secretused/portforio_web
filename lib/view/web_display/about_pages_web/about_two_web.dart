import 'package:flutter/material.dart';

import '../../../utils/project_widget/about_widget.dart';
import '../../../utils/extract_widget.dart';

class AboutTwo extends StatelessWidget {
  const AboutTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // 左サイド
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BodyText(
                text: "Profile",
                color: const Color.fromRGBO(3, 144, 126, 1),
                fontSize: deviceHeight * 0.1,
                fontWeight: FontWeight.bold,
                fontFamily: "Bebas Neue",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: deviceWidth * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(180),
                              child: const ImageWidget(
                                heightValue: 0.2,
                                imagePath: "assets/about/profile_image.jpeg",
                              ),
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "Yuta Toba",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontFamily: '源ノ角ゴシック VF',
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.005),
                                BodyText(
                                  text: "鳥羽悠太",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontFamily: '源ノ角ゴシック VF',
                                  fontSize: deviceHeight * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                HighPaddingText(
                                  text:
                                      "Vantanテックフォードアカデミー\n専門学部 IT総合学科 UI/UXクラス",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "源ノ角ゴシック VF",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                              ],
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        // 強み
                        SmallTitleUnderline(
                          smallTitle: '強み',
                          sizeValue: 0.03,
                          lineLength: deviceWidth * 0.32,
                          paddingValue: 0.005,
                          alignment: CrossAxisAlignment.start,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                        Row(
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
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                  two: TrueCircle(
                                    sizeValue: 0.02,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                  three: TrueCircle(
                                    sizeValue: 0.02,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                  four: TrueCircle(
                                    sizeValue: 0.02,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
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
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                  two: TrueCircle(
                                    sizeValue: 0.02,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                  three: TrueCircle(
                                    sizeValue: 0.02,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
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
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                  two: TrueCircle(
                                    sizeValue: 0.02,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                  three: TrueCircle(
                                    sizeValue: 0.02,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                  four: TrueCircle(
                                    sizeValue: 0.02,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
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
                        HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                        // スキル
                        SmallTitleUnderline(
                          smallTitle: 'スキル',
                          sizeValue: 0.03,
                          lineLength: deviceWidth * 0.39,
                          paddingValue: 0.005,
                          alignment: CrossAxisAlignment.start,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                        SizedBox(
                          width: deviceWidth * 0.38,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SkillText(
                                text: 'Ai',
                                fontValue: 0.035,
                                sizeValue: 0.07,
                                skillName: "illustorator",
                                skillDiscriptions: '基本操作',
                              ),
                              SkillText(
                                text: 'Ps',
                                fontValue: 0.035,
                                sizeValue: 0.07,
                                skillName: "Photoshop",
                                skillDiscriptions: '基本操作',
                              ),
                              SkillText(
                                text: 'Xd',
                                fontValue: 0.035,
                                sizeValue: 0.07,
                                skillName: "Xd",
                                skillDiscriptions: '基本操作',
                              ),
                              SkillIcon(
                                sizeValue: 0.07,
                                imageValue: 0.04,
                                imagePath: 'figma.svg',
                                skillName: "Figma",
                                skillDiscriptions: '実務経験\n1年',
                              ),
                              SkillIcon(
                                sizeValue: 0.07,
                                imageValue: 0.04,
                                imagePath: 'flutter.svg',
                                skillName: "Flutter",
                                skillDiscriptions: 'アプリ\nリリース',
                              ),
                              SkillIcon(
                                sizeValue: 0.07,
                                imageValue: 0.04,
                                imagePath: 'python.svg',
                                skillName: "Python",
                                skillDiscriptions: 'Webサイト\n制作可能',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.06),
                  SizedBox(
                    width: deviceWidth * 0.27,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 自分年表
                        SmallTitleUnderline(
                          smallTitle: '自分年表',
                          sizeValue: 0.03,
                          lineLength: deviceWidth * 0.23,
                          paddingValue: 0.005,
                          alignment: CrossAxisAlignment.start,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.03),
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
                                widthPadding: 0.004,
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
                                widthPadding: 0.004,
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
                                widthPadding: 0.004,
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
                                widthPadding: 0.004,
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
                                widthPadding: 0.004,
                                heightValue: 0.05,
                              ),
                              MyHistoryTopic(
                                circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                                time: '2022.2',
                                event: 'OpenSea「Contradicting World」NFT販売',
                                eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                              VerticalBorderLine(
                                heightPadding: 0.01,
                                widthPadding: 0.004,
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
                                widthPadding: 0.004,
                                heightValue: 0.05,
                              ),
                              MyHistoryTopic(
                                circleColor: Color.fromRGBO(3, 144, 126, 1),
                                time: '2022.7',
                                event: 'エヌ次元株式会社 アルバイト 入社(PM補佐)',
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
            ],
          ),
        ],
      ),
    );
  }
}
