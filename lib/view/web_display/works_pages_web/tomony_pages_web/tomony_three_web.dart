import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// 背景・リサーチ
class TomonyThree extends StatelessWidget {
  const TomonyThree({
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceHeight * 0.59,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(151, 151, 151, 0.3), //色
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(1, 1),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: deviceHeight * 0.03,
                        bottom: deviceHeight * 0.02,
                        left: deviceHeight * 0.03,
                        right: deviceHeight * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "背景",
                              color: const Color(0xFF87C495),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "「生理アプリって女性向けしかなくない？」",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.03,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "源ノ角ゴシック VF",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  SizedBox(
                                    width: deviceWidth * 0.38,
                                    child: HighPaddingText(
                                      text:
                                          "このサービスは、自分が彼女が生理中の時に、よく接し方や喧嘩の解決策を検索することから発案しました。\n問題を客観視できずに喧嘩に発展したり、不満を溜め込んでしまうのではないかと仮定し、女性だけの問題ではなく、それ以上に男性の考え方・接し方を深めることが重要だと考え制作に至りました。",
                                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                      paddingValue: 1.5,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "前提",
                                  color: const Color(0xFF87C495),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.02),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ShadowContainerText(
                                        deviceHeight: deviceHeight,
                                        text: "ピンポイントで自分達の状況にあった質問が少ない",
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.02),
                                      ShadowContainerText(
                                        deviceHeight: deviceHeight,
                                        text: '専門的に1つにまとまっているサービスがない',
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const ImageWidget(
                              heightValue: 0.2,
                              imagePath: "https://i.imgur.com/QL6xkNp.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: deviceHeight * 0.03,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceWidth * 0.37,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(151, 151, 151, 0.1),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.035),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BodyText(
                                    text: "課題発見前の仮説",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.028,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.02),
                                  HighPaddingText(
                                    text:
                                        "悩んで相談したり、愚痴を言ったりしているのではないか？\n相談や既存の回答を参考に、解決できた回数が少ないのでは？\nあまり検索したり、彼女と生理の話をしていないのでは？",
                                    color: const Color.fromRGBO(1, 1, 1, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                    textAlign: TextAlign.start,
                                    paddingValue: 2.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        SizedBox(
                          width: deviceWidth * 0.37,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(151, 151, 151, 0.1),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BodyText(
                                    text: "リサーチ結果(生理経験なし 400名)",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.028,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.02),
                                  SizedBox(
                                    width: deviceWidth * 0.24,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BodyText(
                                              text: "生理についてよく理解している",
                                              color: const Color.fromRGBO(
                                                  1, 1, 1, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            WidthSizedBox(
                                                targetSize: deviceWidth,
                                                value: 0.01),
                                            BodyText(
                                              text: "21.1%",
                                              color: const Color(0xFF87C495),
                                              fontSize: deviceHeight * 0.025,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                          ],
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BodyText(
                                              text: "生理の話をできる相談相手がいる",
                                              color: const Color.fromRGBO(
                                                  1, 1, 1, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            WidthSizedBox(
                                                targetSize: deviceWidth,
                                                value: 0.01),
                                            BodyText(
                                              text: "34.2%",
                                              color: const Color(0xFF87C495),
                                              fontSize: deviceHeight * 0.025,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                          ],
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            HighPaddingText(
                                              text:
                                                  "理解不足を感じ、生理について\nもっと理解したいと感じている",
                                              color: const Color.fromRGBO(
                                                  1, 1, 1, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                              textAlign: TextAlign.start,
                                              paddingValue: 1.3,
                                            ),
                                            WidthSizedBox(
                                                targetSize: deviceWidth,
                                                value: 0.01),
                                            BodyText(
                                              text: "約半数",
                                              color: const Color(0xFF87C495),
                                              fontSize: deviceHeight * 0.025,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  BodyText(
                                    text: "⬇︎",
                                    color: const Color.fromRGBO(1, 1, 1, 0.8),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  HighPaddingText(
                                    text: "・生理の人に対する接し方を知りたい\n・生理への向き合い方を知りたい",
                                    color: const Color(0xFF87C495),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Noto Sans JP",
                                    textAlign: TextAlign.start,
                                    paddingValue: 1.5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
