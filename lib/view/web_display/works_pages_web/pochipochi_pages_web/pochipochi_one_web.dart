import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// ファーストビュー
class PochipochiOne extends StatelessWidget {
  const PochipochiOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: const Color(0xFFEBAA14),
      height: deviceHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const ImagesWidget(
            heightValue: 0.9,
            imagePath: "assets/about/pochipochi_display.png",
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BodyText(
                text: "長く使える幼児向け音声再生アプリ",
                color: Colors.white,
                fontFamily: 'Noto Sans JP',
                fontSize: deviceHeight * 0.03,
                fontWeight: FontWeight.normal,
              ),
              BodyText(
                text: "ぽちぽち",
                color: Colors.white,
                fontFamily: 'しあさって',
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
                    text: 'UI/UX Design',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  const IconText(
                    icon: Icons.people,
                    iconSize: 0.025,
                    text: '個人制作',
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
                    text: '2022.10 (10日間)',
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
