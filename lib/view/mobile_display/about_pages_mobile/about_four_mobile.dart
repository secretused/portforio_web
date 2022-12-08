import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/provider.dart';
import '../../../utils/mobile_widget/about_widget_mobile.dart';
import '../../../utils/project_widget/about_widget.dart';
import '../../../utils/extract_widget.dart';

class AboutFourMobile extends ConsumerWidget {
  const AboutFourMobile({
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
                  sizeValue: _mobileDirectionProviderStatus ? 0.075 : 0.035,
                  lineLength: deviceWidth * 0.45,
                  paddingValue: _mobileDirectionProviderStatus ? 0.01 : 0.005,
                  alignment: CrossAxisAlignment.center,
                ),
                HeightSizedBox(
                    targetSize: deviceHeight,
                    value: _mobileDirectionProviderStatus ? 0.06 : 0.03),
                Padding(
                  padding: EdgeInsets.only(left: deviceWidth * 0.003),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HistoryTopicMobile(
                        circleColor: const Color.fromRGBO(151, 151, 151, 0.5),
                        circleValue:
                            _mobileDirectionProviderStatus ? 0.045 : 0.02,
                        circleBottomPadding:
                            _mobileDirectionProviderStatus ? 0.006 : 0.002,
                        time: '2019.3',
                        event: '岡崎城西高等学校中途退学',
                        eventColor: const Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding:
                            _mobileDirectionProviderStatus ? 0.02 : 0.01,
                        widthPadding: 0.004,
                        heightValue:
                            _mobileDirectionProviderStatus ? 0.1 : 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: const Color.fromRGBO(151, 151, 151, 0.5),
                        circleValue:
                            _mobileDirectionProviderStatus ? 0.045 : 0.02,
                        circleBottomPadding:
                            _mobileDirectionProviderStatus ? 0.006 : 0.002,
                        time: '2020.1',
                        event: 'Langara College LEAP(Canada)入学',
                        eventColor: const Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding:
                            _mobileDirectionProviderStatus ? 0.02 : 0.01,
                        widthPadding: 0.004,
                        heightValue:
                            _mobileDirectionProviderStatus ? 0.1 : 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: const Color.fromRGBO(3, 144, 126, 1),
                        circleValue:
                            _mobileDirectionProviderStatus ? 0.045 : 0.02,
                        circleBottomPadding:
                            _mobileDirectionProviderStatus ? 0.006 : 0.002,
                        time: '2021.4',
                        event: 'Vantanテックフォードアカデミー入学',
                        eventColor: const Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding:
                            _mobileDirectionProviderStatus ? 0.02 : 0.01,
                        widthPadding: 0.004,
                        heightValue:
                            _mobileDirectionProviderStatus ? 0.1 : 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: const Color.fromRGBO(151, 151, 151, 0.5),
                        circleValue:
                            _mobileDirectionProviderStatus ? 0.045 : 0.02,
                        circleBottomPadding:
                            _mobileDirectionProviderStatus ? 0.006 : 0.002,
                        time: '2021.7',
                        event: 'Kindle短編小説集「混沌」出版',
                        eventColor: const Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding:
                            _mobileDirectionProviderStatus ? 0.02 : 0.01,
                        widthPadding: 0.004,
                        heightValue:
                            _mobileDirectionProviderStatus ? 0.1 : 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: const Color.fromRGBO(3, 144, 126, 1),
                        circleValue:
                            _mobileDirectionProviderStatus ? 0.045 : 0.02,
                        circleBottomPadding:
                            _mobileDirectionProviderStatus ? 0.006 : 0.002,
                        time: '2021.12',
                        event: '東京メトロ「Metro Ad Creative Award」作品応募',
                        eventColor: const Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding:
                            _mobileDirectionProviderStatus ? 0.02 : 0.01,
                        widthPadding: 0.004,
                        heightValue:
                            _mobileDirectionProviderStatus ? 0.1 : 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: const Color.fromRGBO(151, 151, 151, 0.5),
                        circleValue:
                            _mobileDirectionProviderStatus ? 0.045 : 0.02,
                        circleBottomPadding:
                            _mobileDirectionProviderStatus ? 0.006 : 0.002,
                        time: '2022.2',
                        event: 'OpenSea「Contradicting World」NFT販売',
                        eventColor: const Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      VerticalBorderLine(
                        heightPadding:
                            _mobileDirectionProviderStatus ? 0.02 : 0.01,
                        widthPadding: 0.004,
                        heightValue:
                            _mobileDirectionProviderStatus ? 0.1 : 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: const Color.fromRGBO(3, 144, 126, 1),
                        circleValue:
                            _mobileDirectionProviderStatus ? 0.045 : 0.02,
                        circleBottomPadding:
                            _mobileDirectionProviderStatus ? 0.006 : 0.002,
                        time: '2022.5',
                        event: '入館管理アプリ「シュッ席」リリース',
                        eventColor: const Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      VerticalBorderLine(
                        heightPadding:
                            _mobileDirectionProviderStatus ? 0.02 : 0.01,
                        widthPadding: 0.004,
                        heightValue:
                            _mobileDirectionProviderStatus ? 0.1 : 0.05,
                      ),
                      HistoryTopicMobile(
                        circleColor: const Color.fromRGBO(3, 144, 126, 1),
                        circleValue:
                            _mobileDirectionProviderStatus ? 0.045 : 0.02,
                        circleBottomPadding:
                            _mobileDirectionProviderStatus ? 0.006 : 0.002,
                        time: '2022.7',
                        event: 'エヌ次元株式会社 アルバイト 入社(PM補佐)',
                        eventColor: const Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      HeightSizedBox(targetSize: deviceHeight, value: 0.05),
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
