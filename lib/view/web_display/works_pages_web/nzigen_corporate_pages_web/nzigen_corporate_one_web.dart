import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// ファーストビュー
class NzigenCorporateOne extends StatelessWidget {
  const NzigenCorporateOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0xFF64CCF0),
      height: deviceHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const ImageWidget(
            heightValue: 0.8,
            imagePath: 'assets/about/nzigen_corporate_display.png',
          ),
          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BodyText(
                text: "ターゲットを意識したHPのUI改修",
                color: Colors.white,
                fontFamily: 'Noto Sans JP',
                fontSize: deviceHeight * 0.03,
                fontWeight: FontWeight.normal,
              ),
              BodyText(
                text: "エヌ次元株式会社",
                color: Colors.white,
                fontFamily: 'Noto Sans JP',
                fontSize: deviceHeight * 0.07,
                fontWeight: FontWeight.bold,
              ),
              HeightSizedBox(
                targetSize: deviceHeight,
                value: 0.025,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const IconText(
                    icon: Icons.insert_drive_file,
                    iconSize: 0.025,
                    text: 'アルバイト先業務',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  const IconText(
                    icon: Icons.people,
                    iconSize: 0.025,
                    text: '構想・ワイヤーフレーム作成',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  const IconText(
                    icon: Icons.brush,
                    iconSize: 0.025,
                    text: 'Figma',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  const IconText(
                    icon: Icons.timer,
                    iconSize: 0.025,
                    text: '2022.9(4ヶ月)',
                    textSize: 0.025,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
