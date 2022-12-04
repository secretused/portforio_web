import 'package:flutter/material.dart';

import '../../../utils/extract_widget.dart';

class AboutTwoMobile extends StatelessWidget {
  const AboutTwoMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "誰もがデザインを考える世界に",
                color: const Color.fromRGBO(0, 0, 0, 0.8),
                fontFamily: 'Nasu',
                fontSize: deviceWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              BodyText(
                text: "「何かわからないけど、このデザインいいな」「使いやすくて楽しい、ワクワクする」",
                color: Colors.black,
                fontFamily: 'Noto Sans JP',
                fontSize: deviceWidth * 0.02,
                fontWeight: FontWeight.normal,
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.005),
              BodyText(
                text: "良いデザインとは、自然と人の興味を惹き、魅了する力があると私は思っています。",
                color: Colors.black,
                fontFamily: 'Noto Sans JP',
                fontSize: deviceWidth * 0.02,
                fontWeight: FontWeight.normal,
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.005),
              BodyText(
                text: "サービス・プロダクトを使ってくれる人のこと最優先に考え、デザインすることで",
                color: Colors.black,
                fontFamily: 'Noto Sans JP',
                fontSize: deviceWidth * 0.02,
                fontWeight: FontWeight.normal,
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.005),
              BodyText(
                text: "誰もがデザインを考える世界を、より多くの人にデザインの力で広げていくことが私のミッションです。",
                color: Colors.black,
                fontFamily: 'Noto Sans JP',
                fontSize: deviceWidth * 0.02,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
