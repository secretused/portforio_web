import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

import '../../../../utils/project_widget/web_design_widget.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class NzigenCorporateSix extends ConsumerWidget {
  const NzigenCorporateSix({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "弊社の強み ワイヤーフレーム",
                color: const Color(0xFF64CCF0),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "Noto Sans JP",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyText(
                          text: "ワイヤーフレーム",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                        DialogmockUpWidget(
                          mockUpImage:
                              "assets/corporate/top_page/top_mockUp_2.png",
                          mockUpimages: Column(
                            children: const [
                              ImageWidget(
                                  heightValue: 0.8,
                                  imagePath:
                                      "assets/corporate/strength_page/strength_wireframe_1.png"),
                              ImageWidget(
                                  heightValue: 0.8,
                                  imagePath:
                                      "assets/corporate/strength_page/strength_wireframe_2.png"),
                              ImageWidget(
                                  heightValue: 0.8,
                                  imagePath:
                                      "assets/corporate/strength_page/strength_wireframe_3.png"),
                              ImageWidget(
                                  heightValue: 0.8,
                                  imagePath:
                                      "assets/corporate/strength_page/strength_wireframe_4.png"),
                              ImageWidget(
                                  heightValue: 0.8,
                                  imagePath:
                                      "assets/corporate/strength_page/strength_wireframe_5.png"),
                              ImageWidget(
                                  heightValue: 0.8,
                                  imagePath:
                                      "assets/corporate/strength_page/strength_wireframe_6.png"),
                              ImageWidget(
                                  heightValue: 0.8,
                                  imagePath:
                                      "assets/corporate/strength_page/strength_wireframe_7.png"),
                              ImageWidget(
                                  heightValue: 1.042,
                                  imagePath:
                                      "assets/corporate/strength_page/strength_wireframe_8.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeightSizedBox(targetSize: deviceHeight, value: 0.045),
                        Row(
                          children: [
                            const ImageWidget(
                              heightValue: 0.2,
                              imagePath:
                                  "assets/corporate/strength_page/strength_pickUp_1.png",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.2,
                              imagePath:
                                  "assets/corporate/strength_page/strength_pickUp_2.png",
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                        HighPaddingText(
                          text:
                              "・弊社の強みを新設することで、従来のサイトでは\n　伝わりづらかったメリットや人間味を表現した。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Noto Sans JP",
                          textAlign: TextAlign.start,
                          paddingValue: 1.5,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.025),
                        HighPaddingText(
                          text:
                              "・会社の強みを実現できる要因を記載することで\n　提供サービスのや制度の紹介も兼ねて伝えられる。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Noto Sans JP",
                          textAlign: TextAlign.start,
                          paddingValue: 1.5,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.025),
                        HighPaddingText(
                          text:
                              "・他者との比較を図示することによって、一目で\n　会社のメリットを伝えられ、信頼感を持たせられる。",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Noto Sans JP",
                          textAlign: TextAlign.start,
                          paddingValue: 1.5,
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
