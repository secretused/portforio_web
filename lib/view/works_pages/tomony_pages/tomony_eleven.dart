import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:html' as html;

import '../../../utils/AboutWidget/about_widget.dart';
import '../../../utils/extract_widget.dart';

const String _notionUrl =
    "https://trusting-syzygy-7c5.notion.site/TOMONY-e374bb2f78464931b715b667f2cd13b3";
const String _figmaUrl =
    "https://www.figma.com/file/uQf8EItAZKndlzsWlKgxeA/%E7%94%9F%E7%90%86%E8%B3%AA%E5%95%8F%E3%82%A2%E3%83%97%E3%83%AA-UI?node-id=0%3A1&t=TAFCb0xpwiuxJCZy-1";

class TomonyEleven extends ConsumerWidget {
  const TomonyEleven({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

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
              BodyText(
                text: "終わりに",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.all(
                  deviceHeight * 0.03,
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
                              text: "インタビューから、課題と本質的価値を導く難しさを感じた",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "インタビュー内容の検討や会話の仕方の学びになりました。",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "課題のインサイトを深堀し、必要なUIを設計できた",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "課題を立てるだけで終わらず、常に結果に疑問を抱き続けれた",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
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
                              text: "ビジネス戦略とデザインを切り離して考えること",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "頭にあるビジネス戦略に捉われず、ユーザーベースで",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "プロジェクトを回すことをさらに追求できるようにしたい",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                            ),
                          ],
                        ),
                      ],
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.1),
                    Row(
                      children: [
                        const IconButtonWidget(
                          heightValue: 0.05,
                          link: _notionUrl,
                          path: 'https://i.imgur.com/mzA6IxP.png',
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        const IconButtonWidget(
                          heightValue: 0.05,
                          link: _figmaUrl,
                          path: 'https://i.imgur.com/uZTvT8k.png',
                        ),
                      ],
                    ),
                    HeightSizedBox(targetSize: deviceWidth, value: 0.03),
                    const WorksNavigationButton(
                      buttonText: 'View More',
                      sizeValue: 0.02,
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
