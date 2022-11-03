import 'package:flutter/material.dart';

import 'utils/extract_widget.dart';
import 'utils/navigation_widget.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({
    Key? key,
    required this.deviceWidth,
    required this.appbarHeight,
  })  : preferredSize = const Size.fromHeight(100),
        super(key: key);

  final double deviceWidth;
  final double appbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      title: Padding(
        padding: EdgeInsets.only(
            right: deviceWidth * 0.05, left: deviceWidth * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(appbarHeight * 0.1),
                child: BodyText(
                  text: 'YT',
                  color: Colors.white,
                  deviceHeight: deviceWidth * 0.15,
                  fontSize: appbarHeight * 0.7,
                  fontWeight: FontWeight.bold,
                  fontFamily: '',
                ),
              ),
            ),
            TextButtonWidget(
              appbarHeight: appbarHeight,
              contentText: "WORK",
              path: '/works',
            ),
          ],
        ),
      ),
    );
  }

  @override
  final Size preferredSize;
}
