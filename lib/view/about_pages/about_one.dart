import 'package:flutter/material.dart';

import '../../utils/extract_widget.dart';

class AboutOne extends StatelessWidget {
  const AboutOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 100,
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
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: deviceHeight,
                    child: Image.network(
                      "https://i.imgur.com/uo2dbX3.png",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: deviceWidth * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        value: 0.025,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
