import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'appbar.dart';

class WorksAppbar extends StatelessWidget implements PreferredSizeWidget {
  const WorksAppbar({
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
      // 戻るボタン無効
      automaticallyImplyLeading: false,
      // 影無効
      elevation: 0.0,
      title: Padding(
        padding: EdgeInsets.only(
            right: deviceWidth * 0.05, left: deviceWidth * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarIcon(
              appbarHeight: appbarHeight,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () => context.go("/"),
                  child: Text(
                    "WORKS",
                    style: TextStyle(
                        fontSize: appbarHeight * 0.5, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  final Size preferredSize;
}
