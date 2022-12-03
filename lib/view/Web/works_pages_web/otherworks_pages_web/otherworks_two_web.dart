import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/about_widget/about_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

class OtherWorksTwo extends StatelessWidget {
  const OtherWorksTwo({
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
                        text: "ビジネスコンテスト応募作品",
                        color: const Color(0xFF726353),
                        fontSize: deviceHeight * 0.035,
                        fontWeight: FontWeight.bold,
                        fontFamily: "源ノ角ゴシック VF",
                      ),
                      Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.02),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ImageWidget(
                                  heightValue: 0.3,
                                  imagePath: "https://i.imgur.com/EgtF30v.png",
                                ),
                                HeightSizedBox(
                                  targetSize: deviceHeight,
                                  value: 0.03,
                                ),
                                BodyText(
                                  text: "Metro Ad Creative Award プランニング部門",
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
                                  text: "「新・学校の七不思議」",
                                  color: const Color(0xFF726353),
                                  fontFamily: '源ノ角ゴシック VF',
                                  fontSize: deviceHeight * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                                HeightSizedBox(
                                  targetSize: deviceHeight,
                                  value: 0.02,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * 0.01),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const IconTextBlack(
                                        icon: Icons.insert_drive_file,
                                        iconSize: 0.025,
                                        text: '銀座駅 構内広告案',
                                        textSize: 0.02,
                                      ),
                                      HeightSizedBox(
                                        targetSize: deviceHeight,
                                        value: 0.01,
                                      ),
                                      const IconTextBlack(
                                        icon: Icons.people,
                                        iconSize: 0.025,
                                        text: 'チーム制作 (チームリーダー)',
                                        textSize: 0.02,
                                      ),
                                      HeightSizedBox(
                                        targetSize: deviceHeight,
                                        value: 0.01,
                                      ),
                                      const IconTextBlack(
                                        icon: Icons.brush,
                                        iconSize: 0.025,
                                        text: 'Photoshop',
                                        textSize: 0.02,
                                      ),
                                      HeightSizedBox(
                                        targetSize: deviceHeight,
                                        value: 0.01,
                                      ),
                                      const IconTextBlack(
                                        icon: Icons.timer,
                                        iconSize: 0.025,
                                        text: '2021.11 (1ヶ月間)',
                                        textSize: 0.02,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    HeightSizedBox(
                                      targetSize: deviceHeight,
                                      value: 0.01,
                                    ),
                                    BodyText(
                                      text: "制作背景",
                                      color: const Color(0xFF726353),
                                      fontSize: deviceHeight * 0.028,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "源ノ角ゴシック VF",
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.all(deviceHeight * 0.015),
                                      child: HighPaddingText(
                                        text:
                                            "選考の一つのアートシンキングの授業で、チームに\n分かれてビジネスコンテストに応募するという\n課題があり、自分は社長(リーダー)に立候補しました。\n生徒自身で就きたい社長を決め、10数名の方が\n自分のチームに集ってくださり、スタートしました。",
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
                                      color: const Color(0xFF726353),
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
                                                color: Color(0xFFad967d),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFFad967d),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFad967d),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFFad967d),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFad967d),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFFad967d),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFad967d),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFFad967d),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFFad967d),
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
                                                  process: "チーム作成",
                                                  detail: "12名の方とプロジェクト始動",
                                                ),
                                                ProcessDetail(
                                                  process: "ビジネスコンテスト探し",
                                                  detail: "期限内に完成できるものに絞る",
                                                ),
                                                ProcessDetail(
                                                  process: "課題の深堀り",
                                                  detail: "テーマの目的と課題を見つける",
                                                ),
                                                ProcessDetail(
                                                  process: "デザイン制作",
                                                  detail: "締め切りに合わせて作業分担",
                                                ),
                                                ProcessDetail(
                                                  process: "提出",
                                                  detail: "スライド形式で提出",
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
