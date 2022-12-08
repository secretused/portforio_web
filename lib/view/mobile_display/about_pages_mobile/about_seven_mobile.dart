import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/provider.dart';
import '../../../utils/extract_widget.dart';

class AboutSevenMobile extends ConsumerWidget {
  const AboutSevenMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final bool _mobileDirectionProviderStatus =
        ref.watch(mobileDirectionProvider);

    return Container(
      color: Colors.white,
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
                fontSize: deviceWidth * 0.15,
                fontWeight: FontWeight.bold,
                fontFamily: "Bebas Neue",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButtonWidget(
                    link: twitteUrl,
                    iconValue: _mobileDirectionProviderStatus ? 0.12 : 0.045,
                    imageValue: _mobileDirectionProviderStatus ? 0.1 : 0.035,
                    path: "https://i.imgur.com/Bcr11yX.png",
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                  IconButtonWidget(
                    link: githubUrl,
                    iconValue: _mobileDirectionProviderStatus ? 0.12 : 0.045,
                    imageValue: _mobileDirectionProviderStatus ? 0.1 : 0.035,
                    path: "https://i.imgur.com/nuHWZ8T.png",
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                  IconButtonWidget(
                    link: qiitaUrl,
                    iconValue: _mobileDirectionProviderStatus ? 0.12 : 0.045,
                    imageValue: _mobileDirectionProviderStatus ? 0.1 : 0.035,
                    path: "https://i.imgur.com/6XzxBQS.png",
                  ),
                ],
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.01),
              BodyText(
                text: "t.yuta.v9410@icloud.com",
                color: Colors.black,
                fontSize: deviceWidth * 0.03,
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
