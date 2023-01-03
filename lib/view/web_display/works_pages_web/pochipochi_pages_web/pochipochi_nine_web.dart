import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';

// Youtube画面
class PochipochiNine extends StatelessWidget {
  const PochipochiNine({
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
                          text: "Youtube動画設定・再生",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.04,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.015),
                        HighPaddingText(
                          text:
                              "　新しいものをわざわざ使ってもらうのではなく\n　利用率が高いYoutubeをそのまま使用し\n　問題にあがった操作性のみを改善する",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceHeight * 0.02,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                          textAlign: TextAlign.start,
                          paddingValue: 1.5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            HighPaddingText(
                              text: "・Youtubeの動画のリンクを\n　コピー&ペーストするだけで、設定可能",
                              color: const Color(0xFFEBAA14),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            LongText(
                              text: "・ホームボタンでアイコンを押すと\n　自動でフルスクリーンで再生される\n　",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.005),
                            HighPaddingText(
                              text: "・動画は自動で再生され、画面をフリック\n　するとホームに戻れる仕様に",
                              color: const Color(0xFFEBAA14),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            HighPaddingText(
                              text: "・自動でサムネイルをアイコン画像に設定\n　分かりやすい画像に変更も可能",
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
                    WidthSizedBox(targetSize: deviceWidth, value: 0.04),
                    const AssetsImage(
                      heightValue: 0.7,
                      imagePath: "pochipochi/pochipochi_movieEdit.png",
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                    const AssetsImage(
                      heightValue: 0.35,
                      imagePath: "pochipochi/pochipochi_youtube.png",
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
