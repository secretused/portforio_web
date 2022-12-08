import 'package:flutter/material.dart';

import '../../../utils/extract_widget.dart';

class CustomAppbarMobile extends StatelessWidget {
  const CustomAppbarMobile({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    var appbarHeight = AppBar().preferredSize.height;

    return AppBar(
      toolbarHeight: 60,
      backgroundColor: Colors.white,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppbarIcon(
            appbarHeight: appbarHeight,
            heightValue: 0.7,
            backgroundColor: backgroundColor,
          ),
        ],
      ),
    );
  }
}
