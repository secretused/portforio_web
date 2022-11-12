import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:html' as html;

import '../../utils/About_Widget/about_widget.dart';
import '../../utils/extract_widget.dart';

final twitterProvider = StateProvider((_) => false);
final qiitaProvider = StateProvider((_) => false);
final githubProvider = StateProvider((_) => false);

const String _twitter_url = "https://twitter.com/uta_app_vta";
const String _github_url = "https://github.com/secretused";
const String _qiita_url = "https://qiita.com/utasan_com";

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.appbarHeight,

    // riverpod ref
    required this.aboutRef,

    // mainのstatus
    required this.status,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final double appbarHeight;
  final WidgetRef aboutRef;

  final bool status;

  @override
  Widget build(BuildContext context) {
    final bool _twitterStatus = aboutRef.watch(twitterProvider);
    final bool _githubStatus = aboutRef.watch(githubProvider);
    final bool _qiitaStatus = aboutRef.watch(qiitaProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          // 1枚目
          Container(
            color: Colors.white,
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: deviceWidth,
                  height: deviceHeight,
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: deviceHeight,
                          child: Image.network(
                            "https://i.imgur.com/uo2dbX3.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: deviceWidth * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: [
                                BodyText(
                                  text: "Yuta",
                                  color: Colors.black,
                                  fontFamily: 'Objective-bold',
                                  fontSize: deviceHeight * 0.15,
                                  fontWeight: FontWeight.bold,
                                ),
                                BodyText(
                                  text: "Toba",
                                  color: Colors.black,
                                  fontFamily: 'Objective-bold',
                                  fontSize: deviceHeight * 0.15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            HeightSizedBox(
                              targetSize: deviceHeight,
                              value: 0.025,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * 0.01),
                                  child: BodyText(
                                    text: "鳥羽悠太",
                                    color: Colors.black,
                                    fontFamily: '',
                                    fontSize: deviceHeight * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * 0.01),
                                  child: BodyText(
                                    text: "/",
                                    color: Colors.black,
                                    fontFamily: '',
                                    fontSize: deviceHeight * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * 0.01),
                                  child: BodyText(
                                    text: "Design Portfolio",
                                    color: Colors.black,
                                    fontFamily: 'Objective-bold',
                                    fontSize: deviceHeight * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // 2枚目
          Container(
            color: Colors.white,
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth * 0.01),
                      child: BodyText(
                        text: "誰もがデザインを考える世界に",
                        color: const Color.fromRGBO(0, 0, 0, 0.8),
                        fontFamily: 'Nasu',
                        fontSize: deviceHeight * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.05),
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth * 0.01),
                      child: BodyText(
                        text: "「何かわからないけどこのデザインいいな」「使いやすくて楽しい、ワクワクする」",
                        color: Colors.black,
                        fontFamily: 'Noto Sans JP',
                        fontSize: deviceHeight * 0.025,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth * 0.01),
                      child: BodyText(
                        text: "良いデザインとは、自然と人の興味を惹き、魅了する力があると私は思っています。",
                        color: Colors.black,
                        fontFamily: 'Noto Sans JP',
                        fontSize: deviceHeight * 0.025,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth * 0.01),
                      child: BodyText(
                        text: "サービス・プロダクトを使ってくれる人のこと最優先に考え、デザインすることで",
                        color: Colors.black,
                        fontFamily: 'Noto Sans JP',
                        fontSize: deviceHeight * 0.025,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth * 0.01),
                      child: BodyText(
                        text: "誰もがデザインを考える世界を、より多くの人にデザインの力で広げていくことが私のミッションです。",
                        color: Colors.black,
                        fontFamily: 'Noto Sans JP',
                        fontSize: deviceHeight * 0.025,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // 3枚目
          Container(
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
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
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
                        deviceHeight: deviceHeight,
                        deviceWidth: deviceWidth,
                        smallTitle: '強み',
                        sizeValue: 0.03,
                        lineLength: deviceWidth * 0.32,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: deviceHeight * 0.03,
                            bottom: deviceHeight * 0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // 戦略
                            Column(
                              children: [
                                StrengthTopic(
                                  deviceHeight: deviceHeight,
                                  topicTitle: '戦略',
                                  icon: Icons.search,
                                ),
                                FiveLevelEvaluation(
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                  one: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  two: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  three: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  four: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  five: FalseCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                )
                              ],
                            ),
                            // 表層
                            Column(
                              children: [
                                StrengthTopic(
                                  deviceHeight: deviceHeight,
                                  topicTitle: '表層',
                                  icon: Icons.brush,
                                ),
                                FiveLevelEvaluation(
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                  one: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  two: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  three: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  four: FalseCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  five: FalseCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                )
                              ],
                            ),
                            // 技術
                            Column(
                              children: [
                                StrengthTopic(
                                  deviceHeight: deviceHeight,
                                  topicTitle: '技術',
                                  icon: Icons.computer,
                                ),
                                FiveLevelEvaluation(
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                  one: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  two: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  three: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  four: TrueCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
                                  ),
                                  five: FalseCircle(
                                    deviceHeight: deviceHeight,
                                    sizeValue: 0.02,
                                    color: const Color(0xFF919191),
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
                        deviceHeight: deviceHeight,
                        deviceWidth: deviceWidth,
                        smallTitle: 'スキル',
                        sizeValue: 0.03,
                        lineLength: deviceWidth * 0.32,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: deviceHeight * 0.02,
                            bottom: deviceHeight * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SkillText(
                                text: 'Ai',
                                deviceHeight: deviceHeight,
                                fontValue: 0.07),
                            SkillText(
                                text: 'Ps',
                                deviceHeight: deviceHeight,
                                fontValue: 0.07),
                            SkillText(
                                text: 'Xd',
                                deviceHeight: deviceHeight,
                                fontValue: 0.07),
                            SkilIcon(
                              deviceHeight: deviceHeight,
                              imagePath: 'assets/figma.svg',
                            ),
                            SkilIcon(
                              deviceHeight: deviceHeight,
                              imagePath: 'assets/flutter.svg',
                            ),
                            SkilIcon(
                              deviceHeight: deviceHeight,
                              imagePath: 'assets/python.svg',
                            ),
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
                          deviceHeight: deviceHeight,
                          deviceWidth: deviceWidth,
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
                          children: [
                            MyHistoryTopic(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              circleColor:
                                  const Color.fromRGBO(151, 151, 151, 0.5),
                              time: '2019.3',
                              event: '岡崎城西高等学校中途退学',
                              eventColor: const Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            VerticalBorderLine(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              heightPadding: 0.01,
                              heightValue: 0.05,
                            ),
                            MyHistoryTopic(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              circleColor:
                                  const Color.fromRGBO(151, 151, 151, 0.5),
                              time: '2020.1',
                              event: 'Langara College LEAP(Canada)入学',
                              eventColor: const Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            VerticalBorderLine(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              heightPadding: 0.01,
                              heightValue: 0.05,
                            ),
                            MyHistoryTopic(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              circleColor: const Color.fromRGBO(3, 144, 126, 1),
                              time: '2021.4',
                              event: 'Vantanテックフォードアカデミー入学',
                              eventColor: const Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                            VerticalBorderLine(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              heightPadding: 0.01,
                              heightValue: 0.05,
                            ),
                            MyHistoryTopic(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              circleColor:
                                  const Color.fromRGBO(151, 151, 151, 0.5),
                              time: '2021.7',
                              event: 'Kindle短編小説集「混沌」出版',
                              eventColor: const Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            VerticalBorderLine(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              heightPadding: 0.01,
                              heightValue: 0.05,
                            ),
                            MyHistoryTopic(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              circleColor: const Color.fromRGBO(3, 144, 126, 1),
                              time: '2021.12',
                              event: '東京メトロ「Metro Ad Creative Award」作品応募',
                              eventColor: const Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                            VerticalBorderLine(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              heightPadding: 0.01,
                              heightValue: 0.05,
                            ),
                            MyHistoryTopic(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              circleColor:
                                  const Color.fromRGBO(151, 151, 151, 0.5),
                              time: '2022.2',
                              event: 'OpenSea NFTコンテンツ 販売',
                              eventColor: const Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            VerticalBorderLine(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              heightPadding: 0.01,
                              heightValue: 0.05,
                            ),
                            MyHistoryTopic(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              circleColor: const Color.fromRGBO(3, 144, 126, 1),
                              time: '2022.5',
                              event: '入館管理アプリ「シュッ席」リリース',
                              eventColor: const Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                            VerticalBorderLine(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              heightPadding: 0.01,
                              heightValue: 0.05,
                            ),
                            MyHistoryTopic(
                              deviceHeight: deviceHeight,
                              deviceWidth: deviceWidth,
                              circleColor: const Color.fromRGBO(3, 144, 126, 1),
                              time: '2022.7',
                              event: 'エヌ次元株式会社 アルバイト 入社',
                              eventColor: const Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // 4枚目
          Container(
            color: Colors.white,
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BodyText(
                          text: "Strength",
                          color: const Color.fromRGBO(3, 144, 126, 1),
                          fontSize: deviceHeight * 0.1,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Bebas Neue",
                        ),
                        BodyText(
                          text: "私が価値創出できる3つの強み",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Nasu",
                        ),
                      ],
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BodyText(
                          text: "Business",
                          color: const Color.fromRGBO(151, 151, 151, 1),
                          fontSize: deviceHeight * 0.06,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MS ゴシック",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        BodyText(
                          text:
                              "専門学校の授業のひとつ、アートシンキングで物事への価値創出を考えることを始めとし、\nビジネスコンテストに参加し、チームマネジメントの大切さを学びました。\nマネジメントでは、アルバイト先でディレクターアシスタントとして、\n会社の価値を常に忘れず、日々業務をおこなっています。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.023,
                          fontWeight: FontWeight.normal,
                          fontFamily: "源ノ角ゴシック",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                        BodyText(
                          text: "Design",
                          color: const Color.fromRGBO(151, 151, 151, 1),
                          fontSize: deviceHeight * 0.06,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MS ゴシック",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        BodyText(
                          text:
                              "現役のデザイナーの方々からの講義で考え方をインプットし、\n戦略から表層まで、HCDの観点で常にユーザーを思い続けることを意識しております。\n直接リサーチを行い、本質的な価値を見定める事を日々心がけ、\nOOUIをベースにUI設計までを行えるのが強みです。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.023,
                          fontWeight: FontWeight.normal,
                          fontFamily: "源ノ角ゴシック",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                        BodyText(
                          text: "Programming",
                          color: const Color.fromRGBO(151, 151, 151, 1),
                          fontSize: deviceHeight * 0.06,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MS ゴシック",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        BodyText(
                          text:
                              "個人的にアプリケーション開発を学び、構想だけで終わらないプロジェクトを実装しております。\nDartのフレームワークである、Flutterを用いた、アプリ開発・リリース経験があります。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.023,
                          fontWeight: FontWeight.normal,
                          fontFamily: "源ノ角ゴシック",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          // 5枚目
          Container(
            color: Colors.white,
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BodyText(
                      text: "Works",
                      color: const Color.fromRGBO(3, 144, 126, 1),
                      fontSize: deviceHeight * 0.1,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bebas Neue",
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                    SizedBox(
                      width: deviceWidth * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WorksTopic(
                            deviceHeight: deviceHeight,
                            deviceWidth: deviceWidth,
                            index: '01',
                            topicColor: const Color(0xFF87C495),
                            imagePath: 'https://i.imgur.com/R58XrDL.png',
                            appName: 'Tomony',
                            appDisc: '生理中のパートナーのお悩み質問',
                          ),
                          WorksTopic(
                            deviceHeight: deviceHeight,
                            deviceWidth: deviceWidth,
                            index: '02',
                            topicColor: const Color(0xFF379BA5),
                            imagePath: 'https://i.imgur.com/rV2dMha.png',
                            appName: 'シュッ席',
                            appDisc: 'QRコードで簡単入館',
                          ),
                          WorksTopic(
                            deviceHeight: deviceHeight,
                            deviceWidth: deviceWidth,
                            index: '03',
                            topicColor: const Color(0xFFEBAA14),
                            imagePath: 'https://i.imgur.com/Mr0yQax.png',
                            appName: 'ぽちぽち',
                            appDisc: '長く使える幼児向け録音アプリ',
                          ),
                          WorksTopic(
                            deviceHeight: deviceHeight,
                            deviceWidth: deviceWidth,
                            index: '04',
                            topicColor: const Color(0xFFCBCBCB),
                            imagePath: 'https://i.imgur.com/POd7NXF.png',
                            appName: 'その他',
                            appDisc: 'OtherWorks',
                          ),
                        ],
                      ),
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.075),
                    WorksNavigationButton(
                      deviceHeight: deviceHeight,
                      appbarHeight: appbarHeight,
                      buttonText: 'View More',
                      sizeValue: 0.02,
                      status: status,
                      aboutRef: aboutRef,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // 6枚目
          Container(
            color: Colors.white,
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BodyText(
                      text: "Thank you",
                      color: Colors.black,
                      fontSize: deviceWidth * 0.1,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bebas Neue",
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.005),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MouseRegion(
                          onEnter: (_) => _twitterEnter(),
                          onExit: (_) => _twitterExit(),
                          child: GestureDetector(
                            onTap: () => html.window.open(_twitter_url, ''),
                            child: SizedBox(
                              height: deviceHeight * 0.05,
                              child: Image.network(
                                "https://i.imgur.com/h1llIxv.png",
                              ),
                            ),
                          ),
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        MouseRegion(
                          onEnter: (_) => _githubEnter(),
                          onExit: (_) => _githubExit(),
                          child: GestureDetector(
                            onTap: () => html.window.open(_github_url, ''),
                            child: SizedBox(
                              height: deviceHeight * 0.05,
                              child: Image.network(
                                "https://i.imgur.com/nuHWZ8T.png",
                              ),
                            ),
                          ),
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        MouseRegion(
                          onEnter: (_) => _qiitaEnter(),
                          onExit: (_) => _qiitaExit(),
                          child: GestureDetector(
                            onTap: () => html.window.open(_qiita_url, ''),
                            child: SizedBox(
                              height: deviceHeight * 0.05,
                              child: Image.network(
                                "https://i.imgur.com/6XzxBQS.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                    BodyText(
                      text: "t.yuta.v9410@icloud.com",
                      color: Colors.black,
                      fontSize: deviceWidth * 0.015,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Nasu",
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _twitterEnter() {
    aboutRef.read(twitterProvider.notifier).update((state) => true);
  }

  void _twitterExit() {
    aboutRef.read(twitterProvider.notifier).update((state) => false);
  }

  void _githubEnter() {
    aboutRef.read(githubProvider.notifier).update((state) => true);
  }

  void _githubExit() {
    aboutRef.read(githubProvider.notifier).update((state) => false);
  }

  void _qiitaEnter() {
    aboutRef.read(qiitaProvider.notifier).update((state) => true);
  }

  void _qiitaExit() {
    aboutRef.read(qiitaProvider.notifier).update((state) => false);
  }
}
