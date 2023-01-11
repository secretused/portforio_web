import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';

// UI
class PochipochiEight extends StatelessWidget {
  const PochipochiEight({
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyText(
                          text: "アイコン編集・選択画面",
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
                            HighPaddingText(
                              text:
                                  "・幼児の誤操作を減らすため、ホーム画面の\n　アイコンを一定時間長押しすることで\n　編集画面を表示することができます",
                              color: const Color(0xFFEBAA14),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            HighPaddingText(
                              text:
                                  "・万が一、設定を開いてしまっても\n　赤く大きい戻るボタンとダイアログ外を\n　タッチしてもホームに戻れる仕様に",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            HighPaddingText(
                              text: "・保護者の方の時間を少しでも軽減するために\n　一目でわかりやすいデザインを意識",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            HighPaddingText(
                              text: "・アイコンの色と形を自由に変更可能\n　豊富な種類で、お子さんの好みにカスタマイズ",
                              color: const Color(0xFFEBAA14),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.04),
                    const ImageWidget(
                      heightValue: 0.7,
                      imagePath: "assets/pochipochi/pochipochi_iconEdit.png",
                    ),
                    const ImageWidget(
                      heightValue: 0.7,
                      imagePath: "assets/pochipochi/pochipochi_iconList.png",
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
