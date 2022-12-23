import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/about_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// 背景
class ShussekiThree extends StatelessWidget {
  const ShussekiThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      height: deviceHeight,
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
                              text: "アプリ開発背景",
                              color: const Color(0xFF379BA5),
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "「IT学校なのに点呼での出席なの!?」",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.03,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "源ノ角ゴシック VF",
                                  ),
                                  HeightSizedBox(
                                      targetSize: deviceHeight, value: 0.01),
                                  HighPaddingText(
                                    text:
                                        "自分のIT専門学校は授業の出席確認を点呼で行っており、授業開始の5分程のタイムロスが\n発生していました。IT専門学校なのに、なぜ手書きで点呼を行っているのだろうか？という\n不満を学校側に伝えたところ、制作要望を頂いたため勉強も兼ねて制作に至りました。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceHeight * 0.02,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Noto Sans JP",
                                    paddingValue: 1.3,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "ターゲット層",
                                  color: const Color(0xFF379BA5),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "源ノ角ゴシック VF",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.02),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ShadowContainerText(
                                        deviceHeight: deviceHeight,
                                        text: 'メインターゲットは自分の学校の生徒・スタッフ',
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.015),
                                      ShadowContainerText(
                                        deviceHeight: deviceHeight,
                                        text: '入館管理をアナログで管理している地方小規模団体',
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const ImageWidget(
                              heightValue: 0.25,
                              imagePath: "https://i.imgur.com/llohL9K.png",
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
                      color: const Color(0xFF379BA5),
                      fontSize: deviceHeight * 0.028,
                      fontWeight: FontWeight.bold,
                      fontFamily: "源ノ角ゴシック VF",
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
                                color: Color(0xFF379BA5),
                              ),
                              VerticalLine(
                                heightPadding: 0.01,
                                heightValue: 0.08,
                                lineColor: Color(0xFF379BA5),
                              ),
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF379BA5),
                              ),
                              VerticalLine(
                                heightPadding: 0.01,
                                heightValue: 0.08,
                                lineColor: Color(0xFF379BA5),
                              ),
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF379BA5),
                              ),
                              VerticalLine(
                                heightPadding: 0.01,
                                heightValue: 0.08,
                                lineColor: Color(0xFF379BA5),
                              ),
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF379BA5),
                              ),
                              VerticalLine(
                                heightPadding: 0.01,
                                heightValue: 0.08,
                                lineColor: Color(0xFF379BA5),
                              ),
                              TrueCircle(
                                sizeValue: 0.015,
                                color: Color(0xFF379BA5),
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
                                  process: "問題提起とターゲット選定",
                                  detail: "学校からリリース費を工面していただく",
                                ),
                                ProcessDetail(
                                  process: "アプリ制作",
                                  detail: "3ヶ月ほどでリリース",
                                ),
                                ProcessDetail(
                                  process: "UIの課題に気づく",
                                  detail: "授業でOOUIを学ぶ",
                                ),
                                ProcessDetail(
                                  process: "UI改修",
                                  detail: "機能は変えずにデザインのみ変更",
                                ),
                                ProcessDetail(
                                  process: "アップデート",
                                  detail: "同級生と新デザインに移行中",
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
