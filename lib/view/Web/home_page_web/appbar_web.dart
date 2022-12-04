import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/extract_widget.dart';

class CustomAppbarWeb extends ConsumerWidget {
  const CustomAppbarWeb({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);
  final Color backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var appbarHeight = AppBar().preferredSize.height;

    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.only(
            right: deviceWidth * 0.05, left: deviceWidth * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarIcon(
              appbarHeight: appbarHeight,
              heightValue: 1.3,
              backgroundColor: backgroundColor,
            ),
            Row(
              children: [
                TextButtonWidget(
                  targetSize: appbarHeight,
                  text: "ABOUT",
                  sizeValue: 0.5,
                  color: Colors.black,
                  path: "/",
                ),
                WidthSizedBox(
                  targetSize: deviceWidth,
                  value: 0.05,
                ),
                TextButtonWidget(
                  targetSize: appbarHeight,
                  text: "WORKS",
                  sizeValue: 0.5,
                  color: Colors.black,
                  path: "/works",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
