import 'package:flutter/material.dart';

import '../../../utils/extract_widget.dart';

class AboutThree extends StatelessWidget {
  const AboutThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "Mission",
                color: const Color.fromRGBO(3, 144, 126, 1),
                fontSize: deviceHeight * 0.1,
                fontWeight: FontWeight.bold,
                fontFamily: "Bebas Neue",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              BodyText(
                text: "誰もがデザインを考える世界に",
                color: const Color.fromRGBO(0, 0, 0, 0.8),
                fontFamily: 'Noto Sans JP',
                fontSize: deviceHeight * 0.06,
                fontWeight: FontWeight.bold,
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              SizedBox(
                width: deviceWidth * 0.8,
                // width: deviceWidth * 0.63,
                child: HighPaddingText(
                  text:
                      "「何かわからないけど、このデザインいいな」「使いやすくて楽しい、ワクワクする」\n良いデザインとは、自然と人の興味を惹き、魅了する力があると私は思っています。サービス・プロダクトを使ってくれる人のことを最優先に考え、デザインすることで、誰もがデザインを考える世界を、より多くの人にデザインの力で広げていくことが私のミッションです。",
                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                  fontFamily: 'Noto Sans JP',
                  fontSize: deviceHeight * 0.028,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.start,
                  paddingValue: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
