import 'package:flutter/material.dart';

import '../../../../utils/extract_widget.dart';
import '../../../utils/project_widget/works_widget.dart';

// 課題策定
class TomonyFive extends StatelessWidget {
  const TomonyFive({
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
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "課題策定",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.028,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: SizedBox(
                  width: deviceWidth * 0.71,
                  child: Column(
                    children: [
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
                          padding: EdgeInsets.all(deviceHeight * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "インタビュー調査で得たこと",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.028,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "源ノ角ゴシック VF",
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: deviceHeight * 0.02),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BodyText(
                                          text:
                                              "・基本そっとしておくことが多い。下手に刺激しないようにしている",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        BodyText(
                                          text: "・愚痴はあまり言いたくないが、話したり相談はする時もある",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        BodyText(
                                          text: "・どうしようもないと割り切っていることが多い",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        BodyText(
                                          text: "・イライラを感じない人も一定数いる",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              WidthSizedBox(
                                  targetSize: deviceWidth, value: 0.02),
                              BodyText(
                                text: "➡︎",
                                color: const Color.fromRGBO(151, 151, 151, 1),
                                fontSize: deviceHeight * 0.04,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                              ),
                              WidthSizedBox(
                                  targetSize: deviceWidth, value: 0.02),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BodyText(
                                    text: "注目ワードの抽出",
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.028,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "源ノ角ゴシック VF",
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: deviceHeight * 0.02),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BodyText(
                                          text: "・自分が我慢する",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        BodyText(
                                          text: "・どうしようもない・しょうがない",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        BodyText(
                                          text: "・どこまで踏み込んでいいかもわからない",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                        HeightSizedBox(
                                            targetSize: deviceHeight,
                                            value: 0.01),
                                        BodyText(
                                          text: "・相手側に変えてもらうよりは自分がどうにかしたい",
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.8),
                                          fontSize: deviceHeight * 0.02,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: deviceWidth * 0.46,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color:
                                        Color.fromRGBO(151, 151, 151, 0.3), //色
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(deviceHeight * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BodyText(
                                      text: "課題の特定",
                                      color: Colors.black,
                                      fontSize: deviceHeight * 0.028,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "源ノ角ゴシック VF",
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceHeight * 0.02,
                                          left: deviceHeight * 0.02),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const IssueTopic(
                                            isuueTopic: "ターゲット",
                                            isuueDetail: "パートナーがいる若者",
                                            isuueDisc: "は",
                                            containerColor: Color.fromRGBO(
                                                135, 196, 149, 0.6),
                                          ),
                                          HeightSizedBox(
                                              targetSize: deviceHeight,
                                              value: 0.02),
                                          const IssueTopic(
                                            isuueTopic: "欲求",
                                            isuueDetail: "相手を尊重し、円満な関係を築きたい",
                                            isuueDisc: "のだが",
                                            containerColor: Color.fromRGBO(
                                                135, 196, 149, 0.6),
                                          ),
                                          HeightSizedBox(
                                              targetSize: deviceHeight,
                                              value: 0.02),
                                          const IssueTopic(
                                            isuueTopic: "課題",
                                            isuueDetail:
                                                "生理中の相手の気持ちや、対応方法の正解が分からず\n気持ちを我慢したり溜め込んでしまう",
                                            isuueDisc: "ため",
                                            containerColor: Color.fromRGBO(
                                                135, 196, 149, 0.6),
                                          ),
                                          HeightSizedBox(
                                              targetSize: deviceHeight,
                                              value: 0.02),
                                          const IssueTopic(
                                            isuueTopic: "提供価値",
                                            isuueDetail:
                                                "経験豊富な人から、分からないことや前提知識を教えてもらい\n関係性を向上すると同時に、気持ちが楽になる",
                                            isuueDisc: "体験を提供する",
                                            containerColor: Color.fromRGBO(
                                                135, 196, 149, 0.6),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          WidthSizedBox(targetSize: deviceWidth, value: 0.015),
                          const ImageWidget(
                            heightValue: 0.4,
                            widthValue: 0.4,
                            imagePath: "https://i.imgur.com/def1C01.png",
                          ),
                        ],
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
