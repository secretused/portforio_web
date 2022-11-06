import 'package:flutter/material.dart';

import '../../utils/extract_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.appbarHeight,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final double appbarHeight;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        BodyText(
                          text: "Yuta",
                          color: Colors.black,
                          fontFamily: 'Objective-bold',
                          fontSize: deviceHeight * 0.15,
                          fontWeight: FontWeight.bold,
                        ),
                        BodyText(
                          text: "Toba",
                          color: Colors.black,
                          fontFamily: 'Objective-bold',
                          fontSize: deviceHeight * 0.15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    HeightSizedBox(
                      targetSize: deviceHeight,
                      value: 0.02,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: deviceWidth * 0.01),
                          child: BodyText(
                            text: "鳥羽悠太",
                            color: Colors.black,
                            fontFamily: '',
                            fontSize: deviceHeight * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: deviceWidth * 0.01),
                          child: BodyText(
                            text: "/",
                            color: Colors.black,
                            fontFamily: '',
                            fontSize: deviceHeight * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: deviceWidth * 0.01),
                          child: BodyText(
                            text: "Design Portfolio",
                            color: Colors.black,
                            fontFamily: 'Objective-bold',
                            fontSize: deviceHeight * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                WidthSizedBox(targetSize: deviceWidth, value: 0.1),
                SizedBox(
                  height: deviceHeight * 0.7,
                  child: Image.network(
                    "https://i.imgur.com/q8j8c1i.png",
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: deviceHeight - 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        BodyText(
                          text: "Yuta",
                          color: Colors.black,
                          fontFamily: 'Objective-bold',
                          fontSize: deviceHeight * 0.15,
                          fontWeight: FontWeight.bold,
                        ),
                        BodyText(
                          text: "Toba",
                          color: Colors.black,
                          fontFamily: 'Objective-bold',
                          fontSize: deviceHeight * 0.15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    HeightSizedBox(
                      targetSize: deviceHeight,
                      value: 0.02,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: deviceWidth * 0.01),
                          child: BodyText(
                            text: "鳥羽悠太",
                            color: Colors.black,
                            fontFamily: '',
                            fontSize: deviceHeight * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: deviceWidth * 0.01),
                          child: BodyText(
                            text: "/",
                            color: Colors.black,
                            fontFamily: '',
                            fontSize: deviceHeight * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: deviceWidth * 0.01),
                          child: BodyText(
                            text: "Design Portfolio",
                            color: Colors.black,
                            fontFamily: 'Objective-bold',
                            fontSize: deviceHeight * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                WidthSizedBox(targetSize: deviceWidth, value: 0.1),
                SizedBox(
                  height: deviceHeight * 0.7,
                  child: Image.network(
                    "https://i.imgur.com/q8j8c1i.png",
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
