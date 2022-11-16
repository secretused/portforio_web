import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/AboutWidget/about_widget.dart';
import '../../utils/extract_widget.dart';

class AboutFive extends ConsumerWidget {
  const AboutFive({
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
                text: "Works",
                color: const Color.fromRGBO(3, 144, 126, 1),
                fontSize: deviceHeight * 0.1,
                fontWeight: FontWeight.bold,
                fontFamily: "Bebas Neue",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.04),
              SizedBox(
                width: deviceWidth * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    WorksTopicContents(
                      index: '01',
                      topicColor: Color(0xFF87C495),
                      imagePath: 'https://i.imgur.com/R58XrDL.png',
                      appName: 'Tomony',
                      appDisc: '生理中のパートナーのお悩み質問',
                      path: '/tomony',
                    ),
                    WorksTopicContents(
                      index: '02',
                      topicColor: Color(0xFF379BA5),
                      imagePath: 'https://i.imgur.com/rV2dMha.png',
                      appName: 'シュッ席',
                      appDisc: 'QRコードで簡単入館',
                      path: '/shusseki',
                    ),
                    WorksTopicContents(
                      index: '03',
                      topicColor: Color(0xFFEBAA14),
                      imagePath: 'https://i.imgur.com/Mr0yQax.png',
                      appName: 'ぽちぽち',
                      appDisc: '長く使える幼児向け録音アプリ',
                      path: '/pochipochi',
                    ),
                    WorksTopicContents(
                      index: '04',
                      topicColor: Color(0xFFCBCBCB),
                      imagePath: 'https://i.imgur.com/POd7NXF.png',
                      appName: 'その他',
                      appDisc: 'OtherWorks',
                      path: '/otherWorks',
                    ),
                  ],
                ),
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.075),
              const WorksNavigationButton(
                buttonText: 'View More',
                sizeValue: 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
