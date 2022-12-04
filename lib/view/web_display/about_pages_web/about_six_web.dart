import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/provider.dart';
import '../../../utils/extract_widget.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IconButtonWidget(
                    link: twitteUrl,
                    heightValue: 0.05,
                    path: "https://i.imgur.com/Bcr11yX.png",
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                  const IconButtonWidget(
                    link: githubUrl,
                    heightValue: 0.05,
                    path: "https://i.imgur.com/nuHWZ8T.png",
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                  const IconButtonWidget(
                    link: qiitaUrl,
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