import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// ファーストビュー
class OtherWorksOne extends StatelessWidget {
  const OtherWorksOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0xFFCBCBCB),
      height: deviceHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const AssetsWidget(
            heightValue: 0.8,
            imagePath: "about/otherworks_display.png",
            // imagePath: "https://i.imgur.com/POd7NXF.png",
          ),
          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BodyText(
                text: "学校でのその他の活動",
                color: Colors.white,
                fontFamily: '源ノ角ゴシック VF',
                fontSize: deviceHeight * 0.03,
                fontWeight: FontWeight.normal,
              ),
              BodyText(
                text: "OtherWorks",
                color: Colors.white,
                fontFamily: '源ノ角ゴシック VF',
                fontSize: deviceHeight * 0.1,
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
                    text: 'アートシンキング作品',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  const IconText(
                    icon: Icons.people,
                    iconSize: 0.025,
                    text: '個人制作・チーム制作',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  const IconText(
                    icon: Icons.brush,
                    iconSize: 0.025,
                    text: 'Photoshop・illustrator他',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  const IconText(
                    icon: Icons.timer,
                    iconSize: 0.025,
                    text: '2021.4 - 2022.11',
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
