import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// 課題策定
class PochipochiFive extends StatelessWidget {
  const PochipochiFive({
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
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "課題策定",
                color: const Color(0xFFEBAA14),
                fontSize: deviceHeight * 0.028,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: SizedBox(
                  width: deviceWidth * 0.8,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
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
                              padding: EdgeInsets.all(deviceHeight * 0.03),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BodyText(
                                        text: "インタビュー調査で得たこと",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.028,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "源ノ角ゴシック VF",
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceHeight * 0.02),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BodyText(
                                              text:
                                                  "・時間に余裕がなかったり、対応が難しい人の方が育児に課題を感じている",
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            BodyText(
                                              text: "・幼児の誤操作が多く、アプリを上手く扱えていない",
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            BodyText(
                                              text:
                                                  "・安心する人を見たらスマホ越しでも泣き止んだり、楽しんでいる",
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            BodyText(
                                              text:
                                                  "・健康への影響を心配して、アプリやスマートフォンを使わせたくない",
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  WidthSizedBox(
                                      targetSize: deviceWidth, value: 0.02),
                                  BodyText(
                                    text: "➡︎",
                                    color: const Color.fromRGBO(
                                        151, 151, 151, 1.0),
                                    fontSize: deviceHeight * 0.04,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  WidthSizedBox(
                                      targetSize: deviceWidth, value: 0.02),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BodyText(
                                        text: "注目ワードの抽出",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.028,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "源ノ角ゴシック VF",
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceHeight * 0.02),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BodyText(
                                              text: "・健康への影響を心配し、使わせていない",
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            BodyText(
                                              text: "・代わり映えのないアプリだとすぐに飽きていた",
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            BodyText(
                                              text: "・テレビ電話でママの顔や声を認識して泣き止んだ",
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            BodyText(
                                              text: "・広告スキップをしようとするとタッチミスが起こる",
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.8),
                                              fontSize: deviceHeight * 0.02,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Noto Sans JP",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                      SizedBox(
                        height: deviceHeight * 0.52,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //調べた事柄
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color:
                                        Color.fromRGBO(151, 151, 151, 0.3), //色
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(deviceHeight * 0.03),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        LongText(
                                          text:
                                              "幼児のスマートフォン利用における\n健康への影響を調べた結果",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.028,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "源ノ角ゴシック VF",
                                          textAlign: TextAlign.center,
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.02),
                                        BodyText(
                                          text: "自分が使っているため、不安だけど使わせている。",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        BodyText(
                                          text: "身体への影響",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.025,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.02),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                BodyText(
                                                  text: "視力の低下",
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
                                                  text: ">",
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
                                                  text: "スマホの近距離使用",
                                                  color:
                                                      const Color(0xFFEBAA14),
                                                  fontSize:
                                                      deviceHeight * 0.025,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Noto Sans JP",
                                                ),
                                              ],
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            Row(
                                              children: [
                                                BodyText(
                                                  text: "睡眠への悪影響",
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
                                                  text: ">",
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
                                                  text: "ブルーライト",
                                                  color:
                                                      const Color(0xFFEBAA14),
                                                  fontSize:
                                                      deviceHeight * 0.025,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Noto Sans JP",
                                                ),
                                              ],
                                            ),
                                            HeightSizedBox(
                                                targetSize: deviceHeight,
                                                value: 0.01),
                                            Row(
                                              children: [
                                                BodyText(
                                                  text: "姿勢の悪化",
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
                                                  text: ">",
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
                                                  text: "長時間の前傾姿勢",
                                                  color:
                                                      const Color(0xFFEBAA14),
                                                  fontSize:
                                                      deviceHeight * 0.025,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Noto Sans JP",
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    BodyText(
                                      text: "⬇︎",
                                      color: const Color.fromRGBO(1, 1, 1, 0.8),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                    BodyText(
                                      text: "スマホ利用は１５分程度が理想",
                                      color: Colors.black,
                                      fontSize: deviceHeight * 0.025,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Noto Sans JP",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.02),
                            //課題の特定
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color:
                                        Color.fromRGBO(151, 151, 151, 0.3), //色
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(deviceHeight * 0.03),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BodyText(
                                      text: "課題の特定",
                                      color: Colors.black,
                                      fontSize: deviceHeight * 0.028,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "源ノ角ゴシック VF",
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight * 0.02,
                                          left: deviceHeight * 0.02),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const IssueTopic(
                                            isuueTopic: "ターゲット",
                                            isuueDetail: "忙しく付きっきりで子守りができない保護者",
                                            isuueDisc: "は",
                                            containerColor: Color.fromRGBO(
                                                235, 170, 20, 0.6),
                                          ),
                                          HeightSizedBox(
                                              targetSize: deviceHeight,
                                              value: 0.02),
                                          const IssueTopic(
                                            isuueTopic: "欲求",
                                            isuueDetail:
                                                "時間をかけずに、健康に配慮した幼児向けアプリを使わせたい",
                                            isuueDisc: "のだが",
                                            containerColor: Color.fromRGBO(
                                                235, 170, 20, 0.6),
                                          ),
                                          HeightSizedBox(
                                              targetSize: deviceHeight,
                                              value: 0.02),
                                          const IssueTopic(
                                            isuueTopic: "課題",
                                            isuueDetail:
                                                "代わり映えのないアプリに飽きてしまい\n幼児の興味・関心に追いつけるサービスがない",
                                            isuueDisc: "ため",
                                            containerColor: Color.fromRGBO(
                                                235, 170, 20, 0.6),
                                          ),
                                          HeightSizedBox(
                                              targetSize: deviceHeight,
                                              value: 0.02),
                                          const IssueTopic(
                                            isuueTopic: "提供価値",
                                            isuueDetail:
                                                "そのアプリ一つで、保護者の方の育児の手助けをし\n幼児が持続的に楽しみながら遊べる",
                                            isuueDisc: "体験を提供する",
                                            containerColor: Color.fromRGBO(
                                                235, 170, 20, 0.6),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
