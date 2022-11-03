import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Go Router Navigation Settings
class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.appbarHeight,
    required this.contentText,
    required this.path,
  }) : super(key: key);

  final double appbarHeight;
  final String contentText;
  final String path;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go(path),
      child: Text(
        contentText,
        style: TextStyle(fontSize: appbarHeight * 0.4, color: Colors.black),
      ),
    );
  }
}
