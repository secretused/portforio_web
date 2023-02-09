import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../provider/provider.dart';
import '../extract_widget.dart';

// Works 目次トピック(左から右)
class WorksTopicLeftMobile extends ConsumerWidget {
  const WorksTopicLeftMobile({
    Key? key,
    required this.index,
    required this.topicColor,
    required this.imagePath,
    required this.appName,
    required this.fontName,
    required this.appDisc,
    required this.path,
  }) : super(key: key);

  final String index;
  final Color topicColor;
  final String imagePath;
  final String appName;
  final String fontName;
  final String appDisc;
  final String path;

  final bool status = false;
  final String nowApp = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final String _appName = ref.watch(appNameProvider);
    final bool _worksTopicContentsProviderStatus =
        ref.watch(worksTopicContentsProvider);

    return Row(
      children: [
        BodyText(
          text: index,
          color: const Color.fromRGBO(151, 151, 151, 1),
          fontSize: deviceWidth * 0.04,
          fontWeight: FontWeight.bold,
          fontFamily: "Noto Sans JP",
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.015),
        GestureDetector(
          onTap: () => GoRouter.of(context).go(path),
          child: Container(
            decoration: BoxDecoration(
              color: topicColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: deviceWidth * 0.15,
              width: deviceWidth * 0.15,
              child: Padding(
                padding: EdgeInsets.all(
                  deviceWidth * 0.015,
                ),
                child: Image.asset(imagePath),
              ),
            ),
          ),
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              child: Text(
                appName,
                style: TextStyle(
                  color:
                      (_appName == appName && _worksTopicContentsProviderStatus)
                          ? topicColor
                          : const Color.fromRGBO(0, 0, 0, 0.8),
                  fontSize: deviceWidth * 0.04,
                  fontWeight: FontWeight.bold,
                  fontFamily: fontName,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              onPressed: () => GoRouter.of(context).go(path),
              onLongPress: () => _textLongPress(ref, appName),
            ),
            HeightSizedBox(targetSize: deviceHeight, value: 0.01),
            BodyText(
              text: appDisc,
              color: const Color.fromRGBO(151, 151, 151, 1),
              fontSize: deviceWidth * 0.02,
              fontWeight: FontWeight.bold,
              fontFamily: "Noto Sans JP",
            ),
          ],
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.2),
      ],
    );
  }

  void _textLongPress(WidgetRef ref, String appName) {
    ref.read(appNameProvider.notifier).update((state) => appName);
    ref.read(worksTopicContentsProvider.notifier).update((state) => true);
  }
}

// Works 目次トピック(右から左)
class WorksTopicRightMobile extends ConsumerWidget {
  const WorksTopicRightMobile({
    Key? key,
    required this.index,
    required this.topicColor,
    required this.imagePath,
    required this.appName,
    required this.fontName,
    required this.appDisc,
    required this.path,
  }) : super(key: key);

  final String index;
  final Color topicColor;
  final String imagePath;
  final String appName;
  final String fontName;
  final String appDisc;
  final String path;

  final bool status = false;
  final String nowApp = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final String _appName = ref.watch(appNameProvider);
    final bool _worksTopicContentsProviderStatus =
        ref.watch(worksTopicContentsProvider);

    return Row(
      children: [
        WidthSizedBox(targetSize: deviceWidth, value: 0.2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              child: Text(
                appName,
                style: TextStyle(
                  color:
                      (_appName == appName && _worksTopicContentsProviderStatus)
                          ? topicColor
                          : const Color.fromRGBO(0, 0, 0, 0.8),
                  fontSize: deviceWidth * 0.04,
                  fontWeight: FontWeight.bold,
                  fontFamily: fontName,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              onPressed: () => GoRouter.of(context).go(path),
              onLongPress: () => _textLongPress(ref, appName),
            ),
            HeightSizedBox(targetSize: deviceHeight, value: 0.01),
            BodyText(
              text: appDisc,
              color: const Color.fromRGBO(151, 151, 151, 1),
              fontSize: deviceWidth * 0.02,
              fontWeight: FontWeight.bold,
              fontFamily: "Noto Sans JP",
            )
          ],
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.02),
        GestureDetector(
          onTap: () => GoRouter.of(context).go(path),
          child: Container(
            decoration: BoxDecoration(
              color: topicColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: deviceWidth * 0.15,
              width: deviceWidth * 0.15,
              child: Padding(
                padding: EdgeInsets.all(
                  deviceWidth * 0.015,
                ),
                child: Image.asset(imagePath),
              ),
            ),
          ),
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.015),
        BodyText(
          text: index,
          color: const Color.fromRGBO(151, 151, 151, 1),
          fontSize: deviceWidth * 0.04,
          fontWeight: FontWeight.bold,
          fontFamily: "Noto Sans JP",
        ),
      ],
    );
  }

  void _textLongPress(WidgetRef ref, String appName) {
    ref.read(appNameProvider.notifier).update((state) => appName);
    ref.read(worksTopicContentsProvider.notifier).update((state) => true);
  }
}
