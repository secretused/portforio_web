import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';

// インタビュー
class FourPage extends StatelessWidget {
  const FourPage({
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
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "インタビュー",
                color: const Color(0xFF87C495),
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
                      text: "パートナーにどうして欲しいか？\n具体的にどう対応しているのか？",
                      color: Colors.black,
                      fontSize: deviceHeight * 0.03,
                      fontWeight: FontWeight.bold,
                      fontFamily: "源ノ角ゴシック VF",
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.05),
                    SizedBox(
                      width: deviceWidth * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              BodyText(
                                text: "Aくん",
                                color: const Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: deviceWidth * 0.015,
                                fontWeight: FontWeight.normal,
                                fontFamily: "",
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 6.0,
                                  ),
                                ),
                                child: const ImageWidget(
                                  heightValue: 0.3,
                                  widthValue: 0.3,
                                  imagePath: "https://i.imgur.com/ghKJwKI.png",
                                ),
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "そっとしておく・臨機応変に対応する",
                                color: const Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: deviceHeight * 0.025,
                                fontWeight: FontWeight.bold,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.03),
                              BodyText(
                                text:
                                    "生理中の症状などを自分から聞く\n相談はしない。男友達に近況を話すが不満は言わない\nめんどくさいのは嫌なため、わかったらそっとしてる",
                                color: const Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  BodyText(
                                    text: "Bくん",
                                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: deviceWidth * 0.015,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "",
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: const Color(0xFF87C495),
                                    width: 6.0,
                                  ),
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  children: [
                                    const ImageWidget(
                                      heightValue: 0.3,
                                      widthValue: 0.3,
                                      imagePath:
                                          "https://i.imgur.com/9V4DkJn.png",
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: deviceHeight * 0.005),
                                      child: BodyText(
                                          text: "強いニーズ",
                                          color: const Color(0xFF87C495),
                                          fontSize: deviceHeight * 0.03,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "源ノ角ゴシック VF"),
                                    )
                                  ],
                                ),
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "当たられる・慣れてるから放置",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.025,
                                fontWeight: FontWeight.bold,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.03),
                              BodyText(
                                text:
                                    "生理はどういうものかは把握している\nどうにもならないから、経験がありそうな男女に聞く\n相談は解決するというより心が良くなる\n人に聞くと俯瞰して意見を聞ける\n自己理解をし共有することが大事だと思う",
                                color: Colors.black,
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              BodyText(
                                text: "Cくん",
                                color: const Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: deviceWidth * 0.015,
                                fontWeight: FontWeight.normal,
                                fontFamily: "",
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 6.0,
                                  ),
                                ),
                                child: const ImageWidget(
                                  heightValue: 0.3,
                                  widthValue: 0.3,
                                  imagePath: "https://i.imgur.com/Eskdj6Q.png",
                                ),
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.02),
                              BodyText(
                                text: "男性陣が我慢する・しょうがない",
                                color: const Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: deviceHeight * 0.025,
                                fontWeight: FontWeight.bold,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                              HeightSizedBox(
                                  targetSize: deviceHeight, value: 0.03),
                              BodyText(
                                text:
                                    "生理に関することを付き合う段階で全て調べた。\n一方的に怒られるが、好きだからイライラしない\n不満があったらパートナーと話しあう。\nバレると怒られるのが嫌なので相談はしない",
                                color: const Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "源ノ角ゴシック VF",
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
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
