import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

class OtherWorksFive extends StatelessWidget {
  const OtherWorksFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      height: deviceHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  BodyText(
                    text: "テーマ",
                    color: const Color(0xFF677790),
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
                              text: "Contradicting World",
                              color: Colors.black,
                              fontFamily: '源ノ角ゴシック VF',
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "矛盾する世界",
                              color: Colors.black,
                              fontFamily: '源ノ角ゴシック VF',
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            const ImageWidget(
                              heightValue: 0.25,
                              imagePath: "https://i.imgur.com/qnNkLu8.jpg",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "NFTのストーリー",
                                  color: const Color(0xFF677790),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.015),
                                  child: HighPaddingText(
                                    text:
                                        "トルコ出身のアーティストUğur Gallenkuşから\nインスピレーションを受け、現在の世界の矛盾を\n表現しました。環境問題や貧困問題などの\n日常と密接に関わっている事柄に目を向け続け\n自分達が持つデザインの力を持て余さずに\n解決に近づけたら良いと考えております。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "源ノ角ゴシック VF",
                                    textAlign: TextAlign.start,
                                    paddingValue: 1.3,
                                  ),
                                ),
                              ],
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "プロジェクトの感想",
                                  color: const Color(0xFF677790),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.015),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BodyText(
                                        text: "・アートの奥深さと、日常との繋がり方を学べました",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "源ノ角ゴシック VF",
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.01),
                                      BodyText(
                                        text: "・自分の作品を世の中に出す責任感を学びました。",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "源ノ角ゴシック VF",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.035),
                                BodyText(
                                  text: "関連作品",
                                  color: const Color(0xFF677790),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                const ImageWidget(
                                  heightValue: 0.25,
                                  imagePath: "https://i.imgur.com/u630Gji.jpg",
                                ),
                              ],
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "自分にとってNFTとは",
                                  color: const Color(0xFF677790),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.015),
                                  child: HighPaddingText(
                                    text:
                                        "非代替性トークン「NFT」は\nデザイン・ビジネス・プログラミングの\nどの観点から見ても、非常に興味深いものだと\n捉えております。アートというものを根底から\n考え直す機会を世に与え、これからの社会を築く\nブロックチェーン技術を浸透させるきっかけにもなり\n技術的にも自分が学ぶべきものだと捉えております。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "源ノ角ゴシック VF",
                                    textAlign: TextAlign.start,
                                    paddingValue: 1.3,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
