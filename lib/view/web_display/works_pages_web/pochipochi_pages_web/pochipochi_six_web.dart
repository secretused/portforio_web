import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// ペルソナ・課題発見後の仮説
class PochipochiSix extends StatelessWidget {
  const PochipochiSix({
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceHeight * 0.275,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(151, 151, 151, 0.1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BodyText(
                              text: "課題のインサイト",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.025),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BodyText(
                                  text: "幼児の興味・関心に追いつける",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "⬇︎",
                                  color: const Color.fromRGBO(1, 1, 1, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                SizedBox(
                                  width: deviceWidth * 0.3,
                                  child: HighPaddingText(
                                    text:
                                        "作られたものを提供するのではなく、自由なカスタマイズ性があり、アプリも共に成長していく必要がある",
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
                      ),
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(151, 151, 151, 0.1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BodyText(
                              text: "課題発見後の仮説",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.028,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.025),
                            HighPaddingText(
                              text:
                                  "Youtubeの動画コンテンツに問題はないが、操作性だけが難しく、\n幼児が誤操作をしてしまい、保護者の手間が増えているのでは？",
                              color: const Color.fromRGBO(1, 1, 1, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.center,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            HighPaddingText(
                              text:
                                  "体への悪影響を考慮できているアプリが少ない。\nまたは、影響を軽減する機能を知らないのでは？",
                              color: const Color.fromRGBO(1, 1, 1, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.center,
                              paddingValue: 1.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BodyText(
                    text: "ペルソナ",
                    color: const Color(0xFFEBAA14),
                    fontSize: deviceHeight * 0.028,
                    fontWeight: FontWeight.bold,
                    fontFamily: "源ノ角ゴシック VF",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.03),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(180),
                                      child: const ImageWidget(
                                        heightValue: 0.2,
                                        imagePath:
                                            // "pochipochi/pochipochi_persona1.png",
                                            "https://i.imgur.com/D8FYpPj.png",
                                      ),
                                    ),
                                    WidthSizedBox(
                                        targetSize: deviceWidth, value: 0.03),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        BodyText(
                                          text: "西村 紗栄子",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.025,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "源ノ角ゴシック VF",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        Row(
                                          children: [
                                            SpaceText(
                                              firstText: "30歳",
                                              firstFontSize:
                                                  deviceHeight * 0.02,
                                              secondText: "広告代理店 営業",
                                              secondFontSize:
                                                  deviceHeight * 0.02,
                                            ),
                                          ],
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        HighPaddingText(
                                          text:
                                              "しっかりした性格で\n仕事も育児も両立している。\n旦那さんは建築設計事務所に勤めている。",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "源ノ角ゴシック VF",
                                          textAlign: TextAlign.start,
                                          paddingValue: 1.5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.03),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(235, 170, 20, 0.6),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(deviceHeight * 0.01),
                                    child: BodyText(
                                      text: "ストーリー",
                                      color: Colors.black,
                                      fontSize: deviceHeight * 0.018,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "源ノ角ゴシック VF",
                                    ),
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * 0.01),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      HighPaddingText(
                                        text:
                                            "1年間の産休を明けてリモートをメインに3ヶ月前から業務に復帰した。\nリモートになってから日菜ちゃんの面倒を付きっきりで出来なくなり\n業務中に泣いてしまったり、心配で離席してしまうことが多い。\n週に1,2日は会社に出社しないといけないため、母親を家に呼び\n日菜ちゃんの面倒を見てもらっているが、泣き出してしまうことも多い。",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.5,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(180),
                                      child: const ImageWidget(
                                        heightValue: 0.2,
                                        imagePath:
                                            // "pochipochi/pochipochi_persona2.png",
                                            "https://i.imgur.com/HBhSURO.png",
                                      ),
                                    ),
                                    WidthSizedBox(
                                        targetSize: deviceWidth, value: 0.03),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        BodyText(
                                          text: "西村 日菜",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.025,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "源ノ角ゴシック VF",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        Row(
                                          children: [
                                            SpaceText(
                                              firstText: "2歳",
                                              firstFontSize:
                                                  deviceHeight * 0.02,
                                              secondText: "幼児",
                                              secondFontSize:
                                                  deviceHeight * 0.02,
                                            ),
                                          ],
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        HighPaddingText(
                                          text:
                                              "元気でよく笑う女の子。しまじろうや\n童謡などの歌って踊れる動画を見るのが好き。",
                                          color: Colors.black,
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "源ノ角ゴシック VF",
                                          textAlign: TextAlign.start,
                                          paddingValue: 1.5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.03),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(235, 170, 20, 0.6),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(deviceHeight * 0.01),
                                    child: BodyText(
                                      text: "ストーリー",
                                      color: Colors.black,
                                      fontSize: deviceHeight * 0.018,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "源ノ角ゴシック VF",
                                    ),
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * 0.01),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      HighPaddingText(
                                        text:
                                            "よく踊ったり動き回るため、ママを困らせることも多い。\nママがリビングで仕事をしている時は、テレビでYoutubeを流したり\nブロックで遊んでいる。よく動くため、度々転んで泣いてしまい\nママになぐさめてもらう。おばあちゃんが来ると遊んでいる時は\n元気だが、不意にママに会えずに寂しくて泣いてしまう時がある。",
                                        color: Colors.black,
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.5,
                                      ),
                                    ],
                                  ),
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
            ],
          ),
        ],
      ),
    );
  }
}
