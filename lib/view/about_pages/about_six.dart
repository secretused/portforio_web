import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:html' as html;

import '../../utils/extract_widget.dart';

const String _twitter_url = "https://twitter.com/uta_app_vta";
const String _github_url = "https://github.com/secretused";
const String _qiita_url = "https://qiita.com/utasan_com";

class AboutSix extends ConsumerWidget {
  const AboutSix({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "Thank you",
                color: Colors.black,
                fontSize: deviceWidth * 0.1,
                fontWeight: FontWeight.bold,
                fontFamily: "Bebas Neue",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IconButtonWidget(
                    link: _twitter_url,
                    heightValue: 0.05,
                    path: "https://i.imgur.com/h1llIxv.png",
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                  const IconButtonWidget(
                    link: _github_url,
                    heightValue: 0.05,
                    path: "https://i.imgur.com/h1llIxv.png",
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                  const IconButtonWidget(
                    link: _qiita_url,
                    heightValue: 0.05,
                    path: "https://i.imgur.com/6XzxBQS.png",
                  ),
                ],
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.01),
              BodyText(
                text: "t.yuta.v9410@icloud.com",
                color: Colors.black,
                fontSize: deviceWidth * 0.015,
                fontWeight: FontWeight.normal,
                fontFamily: "Nasu",
              )
            ],
          )
        ],
      ),
    );
  }
}
