import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

import '../../../../utils/project_widget/about_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

class OtherWorksFour extends StatelessWidget {
  const OtherWorksFour({
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
                        text: "NFT 販売",
                        color: const Color(0xFF677790),
                        fontSize: deviceHeight * 0.035,
                        fontWeight: FontWeight.bold,
                        fontFamily: "源ノ角ゴシック VF",
                      ),
                      Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.03),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ImageWidget(
                                  heightValue: 0.3,
                                  imagePath:
                                      "assets/otherworks/otherworks_nft1.jpeg",
                                ),
                                HeightSizedBox(
                                  targetSize: deviceHeight,
                                  value: 0.03,
                                ),
                                BodyText(
                                  text: "OpenSea NFT販売",
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
                                  text: "「Contradicting World」",
                                  color: const Color(0xFF677790),
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
                                        text: 'NFT',
                                        textSize: 0.02,
                                      ),
                                      HeightSizedBox(
                                        targetSize: deviceHeight,
                                        value: 0.01,
                                      ),
                                      const IconTextBlack(
                                        icon: Icons.people,
                                        iconSize: 0.025,
                                        text: '個人制作',
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
                                        text: '2022.2 (2日間)',
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
                                    BodyText(
                                      text: "制作背景",
                                      color: const Color(0xFF677790),
                                      fontSize: deviceHeight * 0.028,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "源ノ角ゴシック VF",
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.all(deviceHeight * 0.015),
                                      child: HighPaddingText(
                                        text:
                                            "一年次後期のアートシンキングの授業では\n主にNFTを中心とした授業が行われ\n実際にNFTを制作をすることになりました。",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "源ノ角ゴシック VF",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.5,
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
                                      color: const Color(0xFF677790),
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
                                                color: Color(0xFF8497B4),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFF8497B4),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFF8497B4),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFF8497B4),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFF8497B4),
                                              ),
                                              VerticalLine(
                                                heightPadding: 0.01,
                                                heightValue: 0.05,
                                                lineColor: Color(0xFF8497B4),
                                              ),
                                              TrueCircle(
                                                sizeValue: 0.015,
                                                color: Color(0xFF8497B4),
                                              ),
                                            ],
                                          ),
                                          WidthSizedBox(
                                              targetSize: deviceWidth,
                                              value: 0.01),
                                          SizedBox(
                                            height: deviceHeight * 0.3,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                ProcessDetail(
                                                  process: "目標選定",
                                                  detail: "NFTをOpenSeaにミントする",
                                                ),
                                                ProcessDetail(
                                                  process: "テーマ探し",
                                                  detail: "コンセプトを重要視して選定",
                                                ),
                                                ProcessDetail(
                                                  process: "デザイン制作",
                                                  detail: "著作権などにも考慮して制作",
                                                ),
                                                ProcessDetail(
                                                  process: "ミント",
                                                  detail: "0.025 ETHで販売",
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
