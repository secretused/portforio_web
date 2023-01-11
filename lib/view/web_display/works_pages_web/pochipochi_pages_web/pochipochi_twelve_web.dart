import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/project_widget/about_widget.dart';
import '../../../../utils/extract_widget.dart';

// 感想・改善点
class PochipochiTwelve extends ConsumerWidget {
  const PochipochiTwelve({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    const String _notionUrl =
        "https://trusting-syzygy-7c5.notion.site/c29527115132407ca4274c0e204eee88";
    const String _figmaUrl =
        "https://www.figma.com/file/DfI5iNN3wSBKdO98IpgK66/%E5%B9%BC%E5%85%90%E3%82%A2%E3%83%97%E3%83%AA-UI?node-id=96%3A223&t=jRiZBvMrgXIb1dBt-1";

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
              BodyText(
                text: "終わりに",
                color: const Color(0xFFEBAA14),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: deviceHeight * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BodyText(
                              text: "感想",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "前提に疑いを持ち続けることの重要さ",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            SizedBox(
                              width: deviceWidth * 0.32,
                              child: HighPaddingText(
                                text:
                                    "身近な問題に疑問を抱いたことから始まり、ここまで一から作り上げることができたことから、身の回りの問題に耳を傾ける大事さをあらためて実感しました。",
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                                textAlign: TextAlign.start,
                                paddingValue: 1.5,
                              ),
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "デザインだけで終わらない開発",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            SizedBox(
                              width: deviceWidth * 0.32,
                              child: HighPaddingText(
                                text:
                                    "外部コンテンツを扱う上での利用規約や著作権などのデザインだけではない部分にも配慮することが出来ました。",
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
                        WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BodyText(
                              text: "改善点",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "グラフィックが問われるプロジェクト",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            SizedBox(
                              width: deviceWidth * 0.32,
                              child: HighPaddingText(
                                text:
                                    "toB向けのデザインを多く作ってきたので、初めてのターゲット層である幼児が、無意識に気に入るようなデザインを考えるのが難しく、改善の余地がまだまだあると思いました。",
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
                      ],
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.1),
                    Row(
                      children: [
                        const IconButtonWidget(
                          iconValue: 0.06,
                          imageValue: 0.05,
                          link: _notionUrl,
                          path: 'assets/icon/notion_icon.png',
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        const IconButtonWidget(
                          iconValue: 0.06,
                          imageValue: 0.05,
                          link: _figmaUrl,
                          path: 'assets/icon/figma_icon1.png',
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
