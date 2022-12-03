import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/extract_widget.dart';

class CustomAppbarMobile extends ConsumerWidget {
  const CustomAppbarMobile({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);
  final Color backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var appbarHeight = AppBar().preferredSize.height;

    return AppBar(
      toolbarHeight: 60,
      backgroundColor: Colors.white,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Padding(
        padding: EdgeInsets.only(
            right: deviceWidth * 0.05, left: deviceWidth * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarIcon(
              appbarHeight: appbarHeight,
              heightValue: 0.7,
              backgroundColor: backgroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
