import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// ファーストビュー
class ShussekiOne extends StatelessWidget {
  const ShussekiOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: const Color(0xFF379BA5),
      height: deviceHeight - 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: deviceHeight,
            child: Image.network(
              "https://i.imgur.com/2Mn21yC.png",
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BodyText(
                text: "QRコードで簡単入館",
                color: Colors.white,
                fontFamily: '源ノ角ゴシック VF',
                fontSize: deviceHeight * 0.03,
                fontWeight: FontWeight.normal,
              ),
              BodyText(
                text: "シュッ席",
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
                    text: 'アプリ制作/UI改修',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  const IconText(
                    icon: Icons.people,
                    iconSize: 0.025,
                    text: '個人開発',
                    textSize: 0.025,
                  ),
                  HeightSizedBox(
                    targetSize: deviceHeight,
                    value: 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.brush,
                        color: Colors.white,
                        size: deviceHeight * 0.025,
                      ),
                      WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                      HighPaddingText(
                        text:
                            'アプリ制作: Flutter・Firebase・illustrator\nUI改修: Figma',
                        color: Colors.white,
                        fontFamily: '源ノ角ゴシック VF',
                        fontSize: deviceHeight * 0.025,
                        fontWeight: FontWeight.normal,
                        textAlign: TextAlign.start,
                        paddingValue: 1.5,
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
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: deviceHeight * 0.025,
                      ),
                      WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                      HighPaddingText(
                        text: 'アプリ制作: 2022.2 (3ヶ月間)\nUI改修: 2022.10 (1週間)',
                        color: Colors.white,
                        fontFamily: '源ノ角ゴシック VF',
                        fontSize: deviceHeight * 0.025,
                        fontWeight: FontWeight.normal,
                        textAlign: TextAlign.start,
                        paddingValue: 1.5,
                      ),
                    ],
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
