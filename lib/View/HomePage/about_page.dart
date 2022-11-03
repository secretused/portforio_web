import 'package:flutter/material.dart';

import '../../utils/extract_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: deviceHeight,
            child: Image.network(
              "https://i.imgur.com/r8deLQ9.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: const Color(0xFF89C997),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: deviceHeight * 0.05, bottom: deviceHeight * 0.05),
                  child: SizedBox(
                    height: deviceHeight * 0.6,
                    child: Image.network(
                      "https://i.imgur.com/q8j8c1i.png",
                    ),
                  ),
                ),
                BodySizedBox(targetSize: deviceWidth, value: 0.1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BodyText(
                      deviceHeight: deviceHeight,
                      text: '男性限定 生理管理アプリ',
                      color: Colors.white,
                      fontSize: deviceHeight * 0.03,
                      fontWeight: FontWeight.bold,
                      fontFamily: '',
                    ),
                    BodyText(
                      deviceHeight: deviceHeight,
                      text: 'TOMONY',
                      color: Colors.white,
                      fontSize: deviceHeight * 0.1,
                      fontWeight: FontWeight.bold,
                      fontFamily: '',
                    ),
                    BodyText(
                      deviceHeight: deviceHeight,
                      text: '2022 UIUX Design App',
                      color: Colors.white,
                      fontSize: deviceHeight * 0.03,
                      fontWeight: FontWeight.normal,
                      fontFamily: '',
                    ),
                    BodySizedBox(targetSize: deviceHeight, value: 0.01),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
