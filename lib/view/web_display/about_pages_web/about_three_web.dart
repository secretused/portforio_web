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
                child: HighPaddingText(
                  text:
                      "デザインとは「物事の本質を見極め、人生の価値観や質を上げるもの」だと私は考えております。\n誰もがデザインを考えるということは、より人のことを最優先に考えるということです。\n顧客やユーザーが抱えている課題に対して本質的な価値提供を行い、誰もがデザインを考える世界を\nより多くの人にデザインの力で広げていくことが私のミッションです。",
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
