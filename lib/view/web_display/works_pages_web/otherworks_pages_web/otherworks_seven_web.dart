import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

import '../../../../utils/project_widget/about_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

const String _kindleUrl =
    "https://www.amazon.co.jp/%E6%B7%B7%E6%B2%8C-%E4%BC%8A%E8%97%A4-ebook/dp/B099P4D2CX";

class OtherWorksSeven extends StatelessWidget {
  const OtherWorksSeven({
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  BodyText(
                    text: "タイトル",
                    color: const Color(0xFFC7814B),
                    fontSize: deviceHeight * 0.035,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans JP",
                  ),
                  Padding(
                    padding: EdgeInsets.all(deviceHeight * 0.03),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "前頭前野",
                              color: Colors.black,
                              fontFamily: 'Noto Sans JP',
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "思考や創造性を担う脳の最高中枢",
                              color: Colors.black,
                              fontFamily: 'Noto Sans JP',
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "あらすじ",
                              color: const Color(0xFFC7814B),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            HighPaddingText(
                              text:
                                  "ある日、曲が売れずに伸び悩むバンドマンが\n酔い潰れて帰路に着くと、ある夢を見た。\nその中で繰り広げられる奇想天外な出来事は\n果たして何だったのだろうか？",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "タイトル・表紙のコンセプト",
                              color: const Color(0xFFC7814B),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            HighPaddingText(
                              text:
                                  "5人の短編集をまとめて表せるのにピッタリな\n言葉でした。「SF」というテーマにあった\n非常に個性の強い内容から、蝶の神秘的で\n妖艶なさまを表現しました。",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            BodyText(
                              text: "プロジェクトの感想",
                              color: const Color(0xFFC7814B),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            HighPaddingText(
                              text:
                                  "物語を作る上で、構造や心情を考えるのが\n他のプロジェクトを行う上での考え方に\n似てて学びになったと思います。",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                          ],
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.07),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "出版書籍",
                                  color: const Color(0xFFC7814B),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                const ImageLinkWidget(
                                  _kindleUrl,
                                  0.18,
                                  "assets/otherworks/otherworks_kindle.jpeg",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
