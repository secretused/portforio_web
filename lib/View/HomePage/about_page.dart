import 'package:flutter/material.dart';

import '../../utils/extract_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: deviceHeight,
            child: Image.network(
              "https://i.imgur.com/r8deLQ9.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
