import 'package:flutter/material.dart';

import 'extract_widget.dart';

class WorksContent extends StatelessWidget {
  const WorksContent({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.indexNumber,
    required this.imagePath,
    required this.catchPhrase,
    required this.title,
    required this.worksGenre,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;
  final String indexNumber;
  final String imagePath;
  final String catchPhrase;
  final String title;
  final String worksGenre;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: deviceHeight * 0.65, right: deviceWidth * 0.45),
              child: BodyText(
                text: indexNumber,
                color: Colors.grey,
                fontSize: deviceHeight * 0.1,
                fontFamily: '',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              child: Container(
                color: const Color(0xFF89C997),
              ),
              width: deviceWidth * 0.55,
              height: deviceHeight * 0.6,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: deviceHeight * 0.5,
                child: Image.network(
                  imagePath,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: deviceHeight * 0.48, left: deviceWidth * 0.38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyText(
                    text: catchPhrase,
                    color: Colors.white,
                    fontSize: deviceHeight * 0.025,
                    fontWeight: FontWeight.bold,
                    fontFamily: '',
                  ),
                  BodyText(
                    text: title,
                    color: Colors.white,
                    fontSize: deviceHeight * 0.07,
                    fontWeight: FontWeight.bold,
                    fontFamily: '',
                  ),
                ],
              ),
            ),
          ],
        ),
        // Container(
        //   alignment: Alignment.centerRight,
        //   width: deviceWidth * 0.6,
        //   height: deviceHeight * 0.05,
        //   color: Colors.black,
        //   child: BodyText(
        //     text: worksGenre,
        //     color: Colors.white,
        //     fontSize: deviceHeight * 0.025,
        //     fontWeight: FontWeight.normal,
        //     fontFamily: '',
        //   ),
        // ),
      ],
    );
  }
}
