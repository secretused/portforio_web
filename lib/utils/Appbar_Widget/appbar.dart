import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../main.dart';
import '../extract_widget.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  Appbar({
    Key? key,
    required this.deviceWidth,
    required this.appbarHeight,

    // riverpod ref
    required this.appbarRef,

    // mainのstatus
    required this.status,
  })  : preferredSize = const Size.fromHeight(100),
        super(key: key);

  final WidgetRef appbarRef;

  final double deviceWidth;
  final double appbarHeight;

  final bool status;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Padding(
        padding: EdgeInsets.only(
            right: deviceWidth * 0.05, left: deviceWidth * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarIcon(appbarHeight: appbarHeight),
            // statusの逆を指定する
            Row(
              children: [
                TextButton(
                  child: Text(
                    "ABOUT",
                    style: TextStyle(
                      fontSize: appbarHeight * 0.5,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    if (status == true) {
                      appbarRef
                          .read(statusProvider.notifier)
                          .update((state) => !status);
                    }
                  },
                ),
                WidthSizedBox(
                  targetSize: deviceWidth,
                  value: 0.05,
                ),
                TextButton(
                  child: Text(
                    "WORKS",
                    style: TextStyle(
                      fontSize: appbarHeight * 0.5,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    if (status == false) {
                      appbarRef
                          .read(statusProvider.notifier)
                          .update((state) => !status);
                    }
                  },
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

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({
    Key? key,
    required this.appbarHeight,
  }) : super(key: key);

  final double appbarHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).go("/"),
      child: Padding(
        padding: EdgeInsets.only(
            top: appbarHeight * 0.1,
            bottom: appbarHeight * 0.1,
            right: appbarHeight * 0.1,
            left: appbarHeight * 0.15),
        child: SizedBox(
          width: appbarHeight * 1.3,
          height: appbarHeight * 1.3,
          child: ElevatedButton(
            child: BodyText(
              text: "",
              color: Colors.white,
              fontFamily: '',
              fontWeight: FontWeight.bold,
              fontSize: appbarHeight * 0.4,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(3, 144, 126, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(180),
              ),
            ),
            onPressed: () => context.go("/"),
          ),
        ),
      ),
    );
  }
}
