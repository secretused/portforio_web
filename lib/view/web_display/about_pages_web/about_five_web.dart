import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/project_widget/about_widget.dart';
import '../../../utils/extract_widget.dart';

class AboutFive extends ConsumerWidget {
  const AboutFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight,
      color: Colors.white,
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
                fontSize: deviceHeight * 0.12,
                fontWeight: FontWeight.bold,
                fontFamily: "Bebas Neue",
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              SizedBox(
                width: deviceWidth * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    WorksTopicContents(
                      index: '01',
                      topicColor: Color(0xFF87C495),
                      // imagePath: 'about/tomony_display.png',
                      imagePath: 'https://i.imgur.com/R58XrDL.png',
                      appName: 'Tomony',
                      fontName: "Arial Black",
                      appDisc: '男性向けの生理のお悩み質問相談',
                      path: '/tomony',
                    ),
                    WorksTopicContents(
                      index: '02',
                      topicColor: Color(0xFF379BA5),
                      // imagePath: 'about/shusseki_display.png',
                      imagePath: 'https://i.imgur.com/2Mn21yC.png',
                      appName: 'シュッ席',
                      fontName: "源ノ角ゴシック VF",
                      appDisc: 'QRコードで簡単入館',
                      path: '/shusseki',
                    ),
                    WorksTopicContents(
                      index: '03',
                      topicColor: Color(0xFFEBAA14),
                      // imagePath: 'about/pochipochi_display.png',
                      imagePath: 'https://i.imgur.com/jNFOx30.png',
                      appName: 'ぽちぽち',
                      fontName: "しあさって",
                      appDisc: '長く使える幼児向け音声再生アプリ',
                      path: '/pochipochi',
                    ),
                    WorksTopicContents(
                      index: '04',
                      topicColor: Color(0xFFCBCBCB),
                      // imagePath: 'about/otherworks_display.png',
                      imagePath: 'https://i.imgur.com/POd7NXF.png',
                      appName: 'OtherWorks',
                      fontName: "源ノ角ゴシック VF",
                      appDisc: '学校でのその他の活動',
                      path: '/otherWorks',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
