import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// UI
class TomonySeven extends StatelessWidget {
  const TomonySeven({
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
                text: "UI",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Row(
                  children: [
                    const ImageWidget(
                      heightValue: 0.7,
                      imagePath: "https://i.imgur.com/P1zdOQu.png",
                    ),
                    const ImageWidget(
                      heightValue: 0.7,
                      imagePath: "https://i.imgur.com/wJvCVFK.png",
                    ),
                    const ImageWidget(
                      heightValue: 0.7,
                      imagePath: "https://i.imgur.com/nRMcoad.png",
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.04),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyText(
                          text: "質問一覧・詳細画面",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.04,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            BodyText(
                              text: "・オブジェクトベースで質問を見やすく",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "・タグと絵文字で詳細な状況と感情を表せる",
                              color: const Color(0xFF87C495),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Snas JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "・質問内容がわかりやすい、項目ごとの表示",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            HighPaddingText(
                              text: "・真面目さと気軽さを感じさせるための\n　落ち着いた色味と要素を抑えたデザイン",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                          ],
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

class TomonyEight extends StatelessWidget {
  const TomonyEight({
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
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BodyText(
                              text: "質問検索画面",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.04,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Snas JP",
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "・絞り込み機能でより自分に近い悩みを探せる",
                                  color: const Color(0xFF87C495),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.015),
                                BodyText(
                                  text: "・トレンドで簡単に新しい知識が身に付く",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Snas JP",
                                ),
                              ],
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "デフォルト",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                const ImageWidget(
                                  heightValue: 0.6,
                                  imagePath: "https://i.imgur.com/FszIG7K.png",
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "検索結果",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                const ImageWidget(
                                  heightValue: 0.6,
                                  imagePath: "https://i.imgur.com/tkq9mS8.png",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.06),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BodyText(
                              text: "マスター・記事一覧",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.04,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Snas JP",
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                HighPaddingText(
                                  text: "・ベストアンサー数が多い、スコア上位者\n　「マスター」に直接質問を聞ける",
                                  color: const Color(0xFF87C495),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                  textAlign: TextAlign.center,
                                  paddingValue: 1.5,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.015),
                                BodyText(
                                  text: "・マスターが書いた記事を読める",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Snas JP",
                                ),
                              ],
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.025),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            const ImageWidget(
                              heightValue: 0.6,
                              imagePath: "https://i.imgur.com/QQNx0VH.png",
                            ),
                          ],
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
