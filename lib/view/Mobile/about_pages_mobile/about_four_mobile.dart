import 'package:flutter/material.dart';

import '../../../utils/mobile_widget/about_widgrt_mobile.dart';
import '../../../utils/project_widget/about_widget.dart';
import '../../../utils/extract_widget.dart';

class AboutFourMobile extends StatelessWidget {
  const AboutFourMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: deviceWidth * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 自分年表
                SmallTitleUnderline(
                  smallTitle: '自分年表',
                  sizeValue: 0.035,
                  lineLength: deviceWidth * 0.45,
                  alignment: CrossAxisAlignment.center,
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                Padding(
                  padding: EdgeInsets.only(left: deviceWidth * 0.003),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      HistoryTopicMobile(
                        circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                        time: '2019.3',
                        event: '岡崎城西高等学校中途退学',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        widthPadding: 0.004,
                        heightValue: 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                        time: '2020.1',
                        event: 'Langara College LEAP(Canada)入学',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        widthPadding: 0.004,
                        heightValue: 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: Color.fromRGBO(3, 144, 126, 1),
                        time: '2021.4',
                        event: 'Vantanテックフォードアカデミー入学',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        widthPadding: 0.004,
                        heightValue: 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                        time: '2021.7',
                        event: 'Kindle短編小説集「混沌」出版',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        widthPadding: 0.004,
                        heightValue: 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: Color.fromRGBO(3, 144, 126, 1),
                        time: '2021.12',
                        event: '東京メトロ「Metro Ad Creative Award」作品応募',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        widthPadding: 0.004,
                        heightValue: 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: Color.fromRGBO(151, 151, 151, 0.5),
                        time: '2022.2',
                        event: 'OpenSea「Contradicting World」NFT販売',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        widthPadding: 0.004,
                        heightValue: 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: Color.fromRGBO(3, 144, 126, 1),
                        time: '2022.5',
                        event: '入館管理アプリ「シュッ席」リリース',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding: 0.01,
                        widthPadding: 0.004,
                        heightValue: 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: Color.fromRGBO(3, 144, 126, 1),
                        time: '2022.7',
                        event: 'エヌ次元株式会社 アルバイト 入社(PM補佐)',
                        eventColor: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
