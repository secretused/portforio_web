import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// ファーストビュー
class TomonyOne extends StatelessWidget {
  const TomonyOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: const Color(0xFF87C495),
      height: deviceHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const ImageWidget(
            heightValue: 0.9,
            imagePath: "https://i.imgur.com/R58XrDL.png",
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BodyText(
                text: "男性向けの生理のお悩み質問相談",
                color: Colors.white,
                fontFamily: '源ノ角ゴシック VF',
                fontSize: deviceHeight * 0.03,
                fontWeight: FontWeight.normal,
              ),
              BodyText(
                text: "TOMONY",
                color: Colors.white,
                fontFamily: 'Arial Black',
                fontSize: deviceHeight * 0.1,
                fontWeight: FontWeight.bold,
              ),
              HeightSizedBox(
                targetSize: deviceHeight,
                value: 0.025,
              ),
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
                text: '2022.9 (2週間)',
                textSize: 0.025,
              )
            ],
          ),
        ],
      ),
    );
  }
}
