import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/about_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// 背景
class NzigenCorporateTwo extends StatelessWidget {
  const NzigenCorporateTwo({
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceHeight * 0.55,
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
                    padding: EdgeInsets.only(
                        top: deviceHeight * 0.03,
                        bottom: deviceHeight * 0.02,
                        left: deviceHeight * 0.03,
                        right: deviceHeight * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "課題背景",
                              color: const Color(0xFF64CCF0),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "「何をやっている会社なのか分からない」",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.03,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Noto Sans JP",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  SizedBox(
                                    width: deviceWidth * 0.45,
                                    child: HighPaddingText(
                                      text:
                                          "現状のコーポレートサイトでは、社外・社内含めて会社の透明性が低いという声がある。自社の強みや事業内容を伝え、新規顧客からの問い合わせ増加や、求人応募の強化を行いたい。",
                                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                                      fontSize: deviceHeight * 0.02,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Noto Sans JP",
                                      textAlign: TextAlign.start,
                                      paddingValue: 2.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "目的",
                                  color: const Color(0xFF64CCF0),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.02),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ShadowContainerText(
                                        deviceHeight: deviceHeight,
                                        text: '新規顧客からの問い合わせを増やしたい',
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.02),
                                      ShadowContainerText(
                                        deviceHeight: deviceHeight,
                                        text: '各職種の実務経験者の求人応募を増やしたい',
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                            const ImageWidget(
                              heightValue: 0.2,
                              imagePath:
                                  "assets/corporate/top_page/top_overview.png",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              WidthSizedBox(targetSize: deviceWidth, value: 0.03),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: deviceHeight * 0.01,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BodyText(
                      text: "プロジェクトの流れ",
                      color: const Color(0xFF64CCF0),
                      fontSize: deviceHeight * 0.028,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Noto Sans JP",
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                    Padding(
                      padding: EdgeInsets.only(left: deviceHeight * 0.03),
                      child: Row(
                        children: [
                          Column(
                            children: const [
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF64CCF0),
                              ),
                              VerticalLine(
                                heightPadding: 0.01,
                                heightValue: 0.08,
                                lineColor: Color(0xFF64CCF0),
                              ),
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF64CCF0),
                              ),
                              VerticalLine(
                                heightPadding: 0.01,
                                heightValue: 0.08,
                                lineColor: Color(0xFF64CCF0),
                              ),
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF64CCF0),
                              ),
                              VerticalLine(
                                heightPadding: 0.01,
                                heightValue: 0.08,
                                lineColor: Color(0xFF64CCF0),
                              ),
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF64CCF0),
                              ),
                              VerticalLine(
                                heightPadding: 0.01,
                                heightValue: 0.08,
                                lineColor: Color(0xFF64CCF0),
                              ),
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF64CCF0),
                              ),
                            ],
                          ),
                          WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                          SizedBox(
                            height: deviceHeight * 0.45,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ProcessDetail(
                                  process: "現状からRFPを作成",
                                  detail: "課題の把握と認識を一致させる",
                                ),
                                ProcessDetail(
                                  process: "ヒューリスティック分析",
                                  detail: "サイトの課題を抽出する",
                                ),
                                ProcessDetail(
                                  process: "フィードバックをいただく",
                                  detail: "サイト戦略を考えデザインを構想",
                                ),
                                ProcessDetail(
                                  process: "各画面ワイヤーフレーム作成",
                                  detail: "Web・スマホ両方をFigmaで作成",
                                ),
                                ProcessDetail(
                                  process: "提出・フィードバック",
                                  detail: "提出コメントにも意識して行う",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
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
