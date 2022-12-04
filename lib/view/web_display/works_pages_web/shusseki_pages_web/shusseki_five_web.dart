import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// UI改修背景
class ShussekiFive extends StatelessWidget {
  const ShussekiFive({
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceWidth * 0.8,
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
                    padding: EdgeInsets.all(deviceHeight * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "UI改修背景",
                              color: const Color(0xFF379BA5),
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
                                    text: "「OOUIってなんだ!?」",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.03,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "源ノ角ゴシック VF",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  BodyText(
                                    text:
                                        "2022年頃からUI/UXに興味を抱き始め、授業でもUI/UXコースに所属しました。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  BodyText(
                                    text:
                                        "授業や自主学習を行っていくうちに、様々な新しい考え方に触れ、ただ作るだけではなく",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  BodyText(
                                    text:
                                        "5段階モデルを意識した開発を行うことで、シュッ席のデザインの悪さにも気づきました。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ShadowContainerText(
                                    deviceHeight: deviceHeight,
                                    text: '使う人のことを考えれずに、開発を進めてしまった',
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  ShadowContainerText(
                                    deviceHeight: deviceHeight,
                                    text: 'オブジェクトではなく、タスクベースでの開発だった',
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const ImageWidget(
                          heightValue: 0.4,
                          imagePath: "https://i.imgur.com/htHfPUH.png",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.02),
              Padding(
                padding: EdgeInsets.only(
                    top: deviceHeight * 0.03,
                    right: deviceHeight * 0.03,
                    left: deviceHeight * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                    SizedBox(
                      height: deviceHeight * 0.3,
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
                                text: "「シュッ席」開発時の自分",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.03,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "・何の機能が必要だろうか？",
                                color: const Color(0xFF379BA5),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "・前提さえ理解すれば使ってくれるはず",
                                color: const Color.fromRGBO(1, 1, 1, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "・ターゲットさえ決めれば問題ないだろう",
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
                    Column(
                      children: [
                        const ImageWidget(
                          heightValue: 0.2,
                          imagePath: "https://i.imgur.com/7BDf19N.png",
                        ),
                        BodyText(
                          text: "→",
                          color: const Color.fromRGBO(151, 151, 151, 1.0),
                          fontSize: deviceHeight * 0.1,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Noto Sans JP",
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                    SizedBox(
                      height: deviceHeight * 0.3,
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
                                text: "UI/UXを学び始めた自分",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.03,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "・要件に含まれるオブジェクトは何だろうか？",
                                color: const Color(0xFF379BA5),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "・ユーザーが真に求めているものは何だろう？",
                                color: const Color.fromRGBO(1, 1, 1, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "・ビジネス戦略より、まずは人間中心の開発に",
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
