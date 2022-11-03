import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';
import 'utils/extract_widget.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({
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
                  fontSize: appbarHeight * 0.7,
                  fontWeight: FontWeight.bold,
                  fontFamily: '',
                ),
              ),
            ),
            // statusの逆を指定する
            TextButton(
              onPressed: () => appbarRef
                  .read(statusProvider.notifier)
                  .update((state) => !status),
              child: Text(
                status ? "WORK" : "ABOUT",
                style: TextStyle(
                    fontSize: appbarHeight * 0.4, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  final Size preferredSize;
}
