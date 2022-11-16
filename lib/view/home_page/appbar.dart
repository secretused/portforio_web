import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../utils/extract_widget.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({Key? key}) : super(key: key);

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
            AppbarIcon(appbarHeight: appbarHeight),
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
          left: appbarHeight * 0.15,
        ),
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
