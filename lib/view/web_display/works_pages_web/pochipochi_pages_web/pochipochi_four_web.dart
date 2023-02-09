import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// インタビュー
class PochipochiFour extends StatelessWidget {
  const PochipochiFour({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "インタビュー",
                color: const Color(0xFFEBAA14),
                fontSize: deviceHeight * 0.028,
                fontWeight: FontWeight.bold,
                fontFamily: "Noto Sans JP",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LongText(
                      text: "普段どのアプリでお子さんを遊ばせている？\n幼児の興味・関心の動向はどう捉えているだろうか？",
                      color: Colors.black,
                      fontSize: deviceHeight * 0.03,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Noto Sans JP",
                      textAlign: TextAlign.start,
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.05),
                    SizedBox(
                      width: deviceWidth * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceWidth * 0.28,
                            child: Column(
                              children: [
                                BodyText(
                                  text: "Aさん",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceWidth * 0.015,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.005),
                                BodyText(
                                  text: "30歳 OL たまに姪と遊ぶ程度",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 6.0,
                                    ),
                                  ),
                                  child: const ImagesWidget(
                                    heightValue: 0.3,
                                    imagePath:
                                        "assets/pochipochi/pochipochi_interview1.png",
                                    // "https:com/cnghG8X.png",
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "健康への影響が心配",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                HighPaddingText(
                                  text:
                                      "健康に悪いから端末は使わせていない\nおもちゃも誤飲や怪我が心配ではある\nママにテレビ電話をしたらすぐに泣き止む\n興味はすぐに変わるが、新しいおもちゃを\n買っても気に入ってるものだけを使用する",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                              ],
                            ),
                          ),
                          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                          SizedBox(
                            width: deviceWidth * 0.28,
                            child: Column(
                              children: [
                                SizedBox(
                                  child: Column(
                                    children: [
                                      BodyText(
                                        text: "Bさん",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: deviceWidth * 0.015,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.005),
                                      BodyText(
                                        text: "22歳 学生 姪をよく預かり面倒",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.02),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: const Color(0xFFEBAA14),
                                      width: 6.0,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    children: [
                                      const ImagesWidget(
                                        heightValue: 0.3,
                                        imagePath:
                                            "assets/pochipochi/pochipochi_interview2.png",
                                        // "https:com/sYOygsl.png",
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: deviceHeight * 0.005),
                                        child: BodyText(
                                          text: "強いニーズ",
                                          color: const Color(0xFFEBAA14),
                                          fontSize: deviceHeight * 0.03,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Noto Sans JP",
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "誤操作が面倒くさい",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                HighPaddingText(
                                  text:
                                      "広告が出るアプリはタッチしないと戻らない\n代わり映えのないアプリだとすぐに飽きていた\nYoutubeはタッチミスで画面が切り変わってしまう\n絵が切り替わるアプリやフレーズを繰り返す歌動画が好き",
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
                          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                          SizedBox(
                            width: deviceWidth * 0.28,
                            child: Column(
                              children: [
                                BodyText(
                                  text: "Cさん",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceWidth * 0.015,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.005),
                                BodyText(
                                  text: "25歳 専業主婦 子供に付きっきり",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 6.0,
                                    ),
                                  ),
                                  child: const ImagesWidget(
                                    heightValue: 0.3,
                                    imagePath:
                                        "assets/pochipochi/pochipochi_interview3.png",
                                    // "https:com/TtJ5jeQ.png",
                                  ),
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                BodyText(
                                  text: "アプリの必要性がわからない",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.02),
                                HighPaddingText(
                                  text:
                                      "アプリの存在は知っているが\n検索はしたことないし\nYoutubeを何不自由なく使っている\n動画の好みは度々変わる",
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
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
