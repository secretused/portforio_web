import 'package:flutter/material.dart';

import '../../utils/extract_widget.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Stack(
            children: [
              Container(
                color: const Color(0xFF89C997),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BodyText(
                      text: '1',
                      color: Colors.white,
                      fontSize: deviceHeight * 0.1,
                      fontFamily: '',
                      fontWeight: FontWeight.bold,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceHeight * 0.05,
                          bottom: deviceHeight * 0.05),
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
                          text: '男性限定 生理管理アプリ',
                          color: Colors.white,
                          fontSize: deviceHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: '',
                        ),
                        BodyText(
                          text: 'TOMONY',
                          color: Colors.white,
                          fontSize: deviceHeight * 0.1,
                          fontWeight: FontWeight.bold,
                          fontFamily: '',
                        ),
                        BodyText(
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
