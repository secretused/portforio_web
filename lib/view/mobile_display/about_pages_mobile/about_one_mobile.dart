import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/provider.dart';
import '../../../utils/extract_widget.dart';

class AboutOneMobile extends ConsumerWidget {
  const AboutOneMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final bool _mobileDirectionProviderStatus =
        ref.watch(mobileDirectionProvider);

    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        _mobileDirectionProviderStatus
            ? Image.asset("assets/about/mobile_mockup2.png")
            : Image.asset("assets/about/mobile_mockup1.png"),
        Padding(
          padding: EdgeInsets.only(
            left: _mobileDirectionProviderStatus
                ? deviceWidth * 0.2
                : deviceWidth * 0.03,
            bottom: deviceWidth * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: _mobileDirectionProviderStatus
                ? MainAxisAlignment.center
                : MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: [
                  BodyText(
                    text: "Yuta",
                    color: Colors.black,
                    fontFamily: 'Objective-bold',
                    fontSize: _mobileDirectionProviderStatus
                        ? deviceHeight * 0.15
                        : deviceWidth * 0.13,
                    fontWeight: FontWeight.bold,
                  ),
                  BodyText(
                    text: "Toba",
                    color: Colors.black,
                    fontFamily: 'Objective-bold',
                    fontSize: _mobileDirectionProviderStatus
                        ? deviceHeight * 0.15
                        : deviceWidth * 0.13,
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
                    fontSize: _mobileDirectionProviderStatus
                        ? deviceHeight * 0.06
                        : deviceWidth * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                  BodyText(
                    text: "/",
                    color: Colors.black,
                    fontFamily: 'Objective-bold',
                    fontSize: _mobileDirectionProviderStatus
                        ? deviceHeight * 0.06
                        : deviceWidth * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                  WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                  BodyText(
                    text: "Design Portfolio",
                    color: Colors.black,
                    fontFamily: 'Objective-bold',
                    fontSize: _mobileDirectionProviderStatus
                        ? deviceHeight * 0.06
                        : deviceWidth * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
