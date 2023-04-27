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
      height: deviceHeight * 0.3,
      color: const Color.fromRGBO(3, 144, 126, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Yuta Toba Design Portfolio",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: _mobileDirectionProviderStatus
                      ? deviceHeight * 0.05
                      : deviceHeight * 0.05,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Bebas Neue",
                  letterSpacing: 0.05,
                  height: 1.0,
                ),
              ),
              HeightSizedBox(targetSize: deviceWidth, value: 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButtonWidget(
                    link: twitteUrl,
                    iconValue: _mobileDirectionProviderStatus ? 0.12 : 0.045,
                    imageValue: _mobileDirectionProviderStatus ? 0.1 : 0.035,
                    path: "assets/icon/twitter_icon.png",
                    iconBackColor: Colors.transparent,
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                  IconButtonWidget(
                    link: githubUrl,
                    iconValue: _mobileDirectionProviderStatus ? 0.12 : 0.045,
                    imageValue: _mobileDirectionProviderStatus ? 0.1 : 0.035,
                    path: "assets/icon/github_icon.png",
                    iconBackColor: Colors.transparent,
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                  IconButtonWidget(
                    link: qiitaUrl,
                    iconValue: _mobileDirectionProviderStatus ? 0.12 : 0.045,
                    imageValue: _mobileDirectionProviderStatus ? 0.1 : 0.035,
                    path: "assets/icon/qiita_icon.png",
                    iconBackColor: Colors.transparent,
                  ),
                ],
              ),
              HeightSizedBox(targetSize: deviceWidth, value: 0.01),
              BodyText(
                text: "t.yuta.v9410@icloud.com",
                color: Colors.black,
                fontSize: _mobileDirectionProviderStatus
                    ? deviceHeight * 0.02
                    : deviceHeight * 0.02,
                fontWeight: FontWeight.bold,
                fontFamily: "Noto Sans JP",
              )
            ],
          )
        ],
      ),
    );
  }
}
