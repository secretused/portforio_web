import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'extract_widget.dart';

final statusProvider = StateProvider((_) => false);

class WorksContent extends StatelessWidget {
  const WorksContent({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.indexNumber,
    required this.imagePath,
    required this.catchPhrase,
    required this.title,
    required this.navigationPath,
    required this.worksRef,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;
  final String indexNumber;
  final String imagePath;
  final String catchPhrase;
  final String title;
  final String navigationPath;

  final WidgetRef worksRef;

  @override
  Widget build(BuildContext context) {
    final bool _status = worksRef.watch(statusProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            // インデックス番号
            Padding(
              padding: EdgeInsets.only(
                  bottom: deviceHeight * 0.65, right: deviceWidth * 0.45),
              child: BodyText(
                text: indexNumber,
                color: Colors.grey,
                fontSize: deviceHeight * 0.1,
                fontFamily: '',
                fontWeight: FontWeight.bold,
              ),
            ),
            // 緑の背景
            SizedBox(
              child: Container(
                color: const Color(0xFF89C997),
              ),
              width: deviceWidth * 0.55,
              height: deviceHeight * 0.6,
            ),
            // アプリ画像
            SizedBox(
              height: deviceHeight * 0.5,
              child: Image.network(
                imagePath,
              ),
            ),
            // キャッチフレーズ & タイトル
            Padding(
              padding: EdgeInsets.only(
                  top: deviceHeight * 0.48, left: deviceWidth * 0.38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyText(
                    text: catchPhrase,
                    color: Colors.white,
                    fontSize: deviceHeight * 0.02,
                    fontWeight: FontWeight.bold,
                    fontFamily: '',
                  ),
                  BodyText(
                    text: title,
                    color: Colors.white,
                    fontSize: deviceHeight * 0.07,
                    fontWeight: FontWeight.bold,
                    fontFamily: '',
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => GoRouter.of(context).go(navigationPath),
              child: MouseRegion(
                onEnter: (_) => statusEnter(),
                onExit: (_) => statusExit(),
                child: SizedBox(
                  child: Container(
                    color: _status
                        ? const Color.fromRGBO(158, 158, 158, 0.1)
                        : Colors.transparent,
                  ),
                  width: deviceWidth * 0.55,
                  height: deviceHeight * 0.6,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void statusEnter() {
    worksRef.read(statusProvider.notifier).update((state) => true);
  }

  void statusExit() {
    worksRef.read(statusProvider.notifier).update((state) => false);
  }
}
