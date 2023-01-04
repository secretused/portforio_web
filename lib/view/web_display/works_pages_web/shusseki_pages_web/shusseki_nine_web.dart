import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// マネタイズ・デザイン
class ShussekiNine extends StatelessWidget {
  const ShussekiNine({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BodyText(
                    text: "マネタイズ",
                    color: const Color(0xFF379BA5),
                    fontSize: deviceHeight * 0.035,
                    fontWeight: FontWeight.bold,
                    fontFamily: "源ノ角ゴシック VF",
                  ),
                  Padding(
                    padding: EdgeInsets.all(deviceHeight * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyText(
                          text: "AdMob広告収入",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Sans JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        HighPaddingText(
                          text:
                              "現在、マネタイズは導入されておりませんが、アップデート後に\nAdMobを導入し、広告収入を機能の妨げにならない画面のみ\n下部にバナーを表示したいと思っております",
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
              HeightSizedBox(targetSize: deviceWidth, value: 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BodyText(
                    text: "デザイン",
                    color: const Color(0xFF379BA5),
                    fontSize: deviceHeight * 0.035,
                    fontWeight: FontWeight.bold,
                    fontFamily: "源ノ角ゴシック VF",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: deviceHeight * 0.03),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                    text: "シュッ席",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.07,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "源ノ角ゴシック VF",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.04),
                                  HighPaddingText(
                                    text: "「シュッ」とスマートフォンをかざして\n素早く出席を行えることから命名",
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
                        WidthSizedBox(targetSize: deviceWidth, value: 0.04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ImageWidget(
                              heightValue: 0.15,
                              imagePath: "assets/shusseki/shusseki_icon.png",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            SizedBox(
                              width: deviceWidth * 0.15,
                              child: HighPaddingText(
                                text: "バインダーを使って出席していたことから抜粋",
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                                textAlign: TextAlign.start,
                                paddingValue: 1.5,
                              ),
                            ),
                          ],
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.04),
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
                                    colorCode: "379BA5",
                                    color: const Color(0xFF379BA5),
                                    rgbColorModel: "R: 55　G: 155　B: 165",
                                  ),
                                ],
                              ),
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.05),
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
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.04,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Open Sans",
                                      ),
                                      WidthSizedBox(
                                          targetSize: deviceWidth, value: 0.01),
                                      BodyText(
                                        text: "Open Sans",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.025,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Open Sans",
                                      ),
                                    ],
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  Row(
                                    children: [
                                      BodyText(
                                        text: "ロゴ",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.04,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "源ノ角ゴシック VF",
                                      ),
                                      WidthSizedBox(
                                          targetSize: deviceWidth, value: 0.01),
                                      BodyText(
                                        text: "源ノ角ゴシック VF",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.025,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "源ノ角ゴシック VF",
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
