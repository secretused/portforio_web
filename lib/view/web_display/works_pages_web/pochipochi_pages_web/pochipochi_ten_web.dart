import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';

class PochipochiTen extends StatelessWidget {
  const PochipochiTen({
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
                              text: "設定画面",
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
                                  text: "・再生アイコン以外のボタンをロックして、未然に誤操作を防止",
                                  color: const Color(0xFFEBAA14),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.015),
                                BodyText(
                                  text: "・事前に設定し、子供が驚かない音と大きさのアラームが鳴る",
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
                                    targetSize: deviceHeight, value: 0.015),
                                const ImageWidget(
                                  heightValue: 0.6,
                                  imagePath: "https://i.imgur.com/KKryqRL.png",
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "タイマー設定",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                const ImageWidget(
                                  heightValue: 0.6,
                                  imagePath: "https://i.imgur.com/omjz6QS.png",
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
                              text: "お知らせ画面",
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
                                  text: "・毎回アプリを開くと表示され\nお子さんの健康への影響を呼びかける",
                                  color: const Color(0xFFEBAA14),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                  textAlign: TextAlign.center,
                                  paddingValue: 1.3,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.015),
                                HighPaddingText(
                                  text: "・Androidでは端末ごとに機能が\n異なるため、表示の仕方を検討中",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Snas JP",
                                  textAlign: TextAlign.center,
                                  paddingValue: 1.3,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            const ImageWidget(
                              heightValue: 0.6,
                              imagePath: "https://i.imgur.com/ILPVBKd.png",
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