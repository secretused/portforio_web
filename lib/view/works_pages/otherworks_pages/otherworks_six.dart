import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';
import '../../../utils/about_widget/about_widget.dart';
import '../../../utils/project_widget/works_widget.dart';

class OtherWorksSix extends StatelessWidget {
  const OtherWorksSix({
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
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
                  padding: EdgeInsets.only(
                    top: deviceHeight * 0.03,
                    bottom: deviceHeight * 0.02,
                    right: deviceHeight * 0.03,
                    left: deviceHeight * 0.03,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                      BodyText(
                        text: "Kindle本 出版",
                        color: const Color(0xFFC7814B),
                        fontSize: deviceHeight * 0.035,
                        fontWeight: FontWeight.bold,
                        fontFamily: "源ノ角ゴシック VF",
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: deviceHeight * 0.03,
                          bottom: deviceHeight * 0.02,
                          right: deviceHeight * 0.03,
                          left: deviceHeight * 0.03,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ImageWidget(
                              heightValue: 0.53,
                              widthValue: 0.3,
                              imagePath: "https://i.imgur.com/wCegYhl.jpg",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "Kindle 短編小説集 出版",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                HeightSizedBox(
                                  targetSize: deviceHeight,
                                  value: 0.02,
                                ),
                                BodyText(
                                  text: "短編小説集「混沌」",
                                  color: const Color(0xFFC7814B),
                                  fontFamily: '源ノ角ゴシック VF',
                                  fontSize: deviceHeight * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                                HeightSizedBox(
                                  targetSize: deviceHeight,
                                  value: 0.02,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const IconTextBlack(
                                      icon: Icons.insert_drive_file,
                                      iconSize: 0.025,
                                      text: 'kindle書籍',
                                      textSize: 0.02,
                                    ),
                                    HeightSizedBox(
                                      targetSize: deviceHeight,
                                      value: 0.01,
                                    ),
                                    const IconTextBlack(
                                      icon: Icons.people,
                                      iconSize: 0.025,
                                      text: 'チーム制作(短編小説・表紙作成)',
                                      textSize: 0.02,
                                    ),
                                    HeightSizedBox(
                                      targetSize: deviceHeight,
                                      value: 0.01,
                                    ),
                                    const IconTextBlack(
                                      icon: Icons.brush,
                                      iconSize: 0.025,
                                      text: 'PhotoShop',
                                      textSize: 0.02,
                                    ),
                                    HeightSizedBox(
                                      targetSize: deviceHeight,
                                      value: 0.01,
                                    ),
                                    const IconTextBlack(
                                      icon: Icons.timer,
                                      iconSize: 0.025,
                                      text: '2021.6 (2週間)',
                                      textSize: 0.02,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BodyText(
                                      text: "制作背景",
                                      color: const Color(0xFFC7814B),
                                      fontSize: deviceHeight * 0.028,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "源ノ角ゴシック VF",
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.all(deviceHeight * 0.015),
                                      child: HighPaddingText(
                                        text:
                                            "一年次前期のアートシンキングの授業で\n「SF」をテーマに共同で書籍を\n出版する事になりました。",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "源ノ角ゴシック VF",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.3,
                                      ),
                                    ),
                                  ],
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.03),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BodyText(
                                      text: "制作プロセス",
                                      color: const Color(0xFFC7814B),
                                      fontSize: deviceHeight * 0.028,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "源ノ角ゴシック VF",
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: deviceHeight * 0.02),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: const [
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFC7814B),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFFC7814B),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFC7814B),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFFC7814B),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFC7814B),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFFC7814B),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFC7814B),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFFC7814B),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFC7814B),
                                              ),
                                            ],
                                          ),
                                          WidthSizedBox(
                                              targetSize: deviceWidth,
                                              value: 0.01),
                                          SizedBox(
                                            height: deviceHeight * 0.35,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                ProcessDetail(
                                                  process: "チーム分け",
                                                  detail: "ランダムで決められ、5人で始動",
                                                ),
                                                ProcessDetail(
                                                  process: "ストーリー構想",
                                                  detail: "テーマに沿って思考",
                                                ),
                                                ProcessDetail(
                                                  process: "執筆と編集",
                                                  detail: "原稿を書き、書式を揃える",
                                                ),
                                                ProcessDetail(
                                                  process: "タイトル・表紙作成",
                                                  detail: "内容に沿って作成",
                                                ),
                                                ProcessDetail(
                                                  process: "Kindle出版",
                                                  detail: "出版",
                                                ),
                                              ],
                                            ),
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
