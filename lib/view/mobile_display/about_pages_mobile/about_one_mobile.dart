import 'package:flutter/material.dart';

import '../../../utils/extract_widget.dart';

class AboutOneMobile extends StatelessWidget {
  const AboutOneMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // deviceWidth
    var deviceWidth = MediaQuery.of(context).size.width;
    // 821
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: deviceWidth,
            height: deviceHeight,
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: ImageWidthWidget(
                    widthValue: deviceWidth,
                    imagePath: "https://i.imgur.com/mFt6tNO.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: deviceWidth * 0.03, bottom: deviceWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: [
                          BodyText(
                            text: "Yuta",
                            color: Colors.black,
                            fontFamily: 'Objective-bold',
                            fontSize: deviceWidth * 0.13,
                            fontWeight: FontWeight.bold,
                          ),
                          BodyText(
                            text: "Toba",
                            color: Colors.black,
                            fontFamily: 'Objective-bold',
                            fontSize: deviceWidth * 0.13,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      HeightSizedBox(
                        targetSize: deviceHeight,
                        value: 0.01,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                          BodyText(
                            text: "鳥羽悠太",
                            color: Colors.black,
                            fontFamily: 'Objective-bold',
                            fontSize: deviceWidth * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                          WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                          BodyText(
                            text: "/",
                            color: Colors.black,
                            fontFamily: 'Objective-bold',
                            fontSize: deviceWidth * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                          WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                          BodyText(
                            text: "Design Portfolio",
                            color: Colors.black,
                            fontFamily: 'Objective-bold',
                            fontSize: deviceWidth * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
