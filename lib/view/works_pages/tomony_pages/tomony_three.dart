import 'package:flutter/material.dart';

import '../../../utils/project_widget/about_widget.dart';
import '../../../../utils/extract_widget.dart';
import '../../../utils/project_widget/works_widget.dart';

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
      color: Colors.white,
      height: deviceHeight - 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceWidth * 0.9,
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
                    padding: EdgeInsets.all(deviceHeight * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                  BodyText(
                                    text:
                                        "このサービスは、自分の彼女が生理中の時によく接し方や、喧嘩の対応法を検索することから発案",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  BodyText(
                                    text:
                                        "客観的に問題をみれずに喧嘩になってしまったり、溜め込んだりしてしまうのではないかと仮定し",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  BodyText(
                                    text:
                                        "女性だけの問題ではなく、それ以上に男性の考え方・接し方を深めることが重要だと考え制作した",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                ],
                              ),
                            ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90),
                                      color: const Color.fromRGBO(
                                          151, 151, 151, 0.3),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.all(deviceHeight * 0.015),
                                      child: BodyText(
                                        text: "ピンポイントで自分達の状況にあった質問が少ない",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                    ),
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.03),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90),
                                      color: const Color.fromRGBO(
                                          151, 151, 151, 0.3),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.all(deviceHeight * 0.015),
                                      child: BodyText(
                                        text: "専門的に1つにまとまっているサービスがない",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const ImageWidget(
                          heightValue: 0.4,
                          widthValue: 0.4,
                          imagePath: "https://i.imgur.com/PNGN244.png",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: deviceWidth * 0.9,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: deviceHeight * 0.03,
                      right: deviceHeight * 0.03,
                      left: deviceHeight * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BodyText(
                            text: "リサーチ・インタビュー",
                            color: const Color(0xFF87C495),
                            fontSize: deviceHeight * 0.028,
                            fontWeight: FontWeight.bold,
                            fontFamily: "源ノ角ゴシック VF",
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: deviceHeight * 0.01,
                                left: deviceHeight * 0.03),
                            child: Row(
                              children: [
                                Column(
                                  children: const [
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFF87C495),
                                    ),
                                    VerticalLine(
                                      heightPadding: 0.01,
                                      heightValue: 0.05,
                                      lineColor: Color(0xFF87C495),
                                    ),
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFF87C495),
                                    ),
                                    VerticalLine(
                                      heightPadding: 0.01,
                                      heightValue: 0.05,
                                      lineColor: Color(0xFF87C495),
                                    ),
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFF87C495),
                                    ),
                                    VerticalLine(
                                      heightPadding: 0.01,
                                      heightValue: 0.05,
                                      lineColor: Color(0xFF87C495),
                                    ),
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFF87C495),
                                    ),
                                    VerticalLine(
                                      heightPadding: 0.01,
                                      heightValue: 0.05,
                                      lineColor: Color(0xFF87C495),
                                    ),
                                    TrueCircle(
                                      sizeValue: 0.015,
                                      color: Color(0xFF87C495),
                                    ),
                                  ],
                                ),
                                WidthSizedBox(
                                    targetSize: deviceWidth, value: 0.01),
                                SizedBox(
                                  height: deviceHeight * 0.34,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      ProcessDetail(
                                        process: "ターゲットと仮説立案",
                                        detail: "課題前の仮説を元にインタビュー作成",
                                      ),
                                      ProcessDetail(
                                        process: "リサーチ(インターネット)",
                                        detail: "生理経験なしの若者の悩みを調査",
                                      ),
                                      ProcessDetail(
                                        process: "自分の認識の誤りを修正",
                                        detail: "パートナーは同姓だけではない",
                                      ),
                                      ProcessDetail(
                                        process: "インタビュー",
                                        detail: "学校の友人・スタッフ数名に実施",
                                      ),
                                      ProcessDetail(
                                        process: "分析",
                                        detail: "結果をもとに課題を抽出",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                      SizedBox(
                        height: deviceHeight * 0.32,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(151, 151, 151, 0.1),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(deviceHeight * 0.03),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "課題発見前の仮説",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.025),
                                BodyText(
                                  text: "悩んで相談したり、愚痴を言ったりしているのではないか？",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "相談や既存の回答を参考に解決できた回数が少ないのでは？",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "あまり検索したり、パートナーと話をしていないのでは？",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                      SizedBox(
                        height: deviceHeight * 0.32,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(151, 151, 151, 0.1),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(deviceHeight * 0.03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "リサーチ結果(生理経験なし400名)",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                Row(
                                  children: [
                                    BodyText(
                                      text: "生理についてよく理解している",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                    WidthSizedBox(
                                        targetSize: deviceWidth, value: 0.01),
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
                                    targetSize: deviceHeight, value: 0.01),
                                Row(
                                  children: [
                                    BodyText(
                                      text: "生理の話や相談相手がいる",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                    WidthSizedBox(
                                        targetSize: deviceWidth, value: 0.01),
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
                                    targetSize: deviceHeight, value: 0.01),
                                Row(
                                  children: [
                                    BodyText(
                                      text: "理解不足を感じ、生理について\nもっと理解したいと感じている",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                    WidthSizedBox(
                                        targetSize: deviceWidth, value: 0.01),
                                    BodyText(
                                      text: "約半数",
                                      color: const Color(0xFF87C495),
                                      fontSize: deviceHeight * 0.025,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                  ],
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
                                BodyText(
                                  text: "生理の人に対する接し方を知りたい\n生理への向き合い方を知りたい",
                                  color: const Color(0xFF87C495),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
