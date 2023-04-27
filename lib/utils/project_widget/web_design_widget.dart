import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/provider.dart';
import '../extract_widget.dart';

class DialogImageWidget extends ConsumerWidget {
  const DialogImageWidget(
      {Key? key,
      required this.imageWidthValue,
      required this.imagePath,
      required this.imagePaddingValue})
      : super(key: key);

  final double imageWidthValue;
  final String imagePath;
  final double imagePaddingValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final bool _imageLinkProviderStatus = ref.watch(imageLinkProvider);
    final String _dialogImagePathStatus = ref.watch(dialogImagePathProvider);

    return MouseRegion(
      onEnter: (_) => _imageEnter(ref, imagePath),
      onExit: (_) => _imageExit(ref),
      child: GestureDetector(
        onTap: () => showDialog(
          context: context,
          barrierDismissible: true,
          builder: (_) {
            return Container(
              height: deviceHeight * 0.25,
              margin: EdgeInsets.all(deviceHeight * imagePaddingValue),
              child: Center(
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 30),
                      child: Image.asset(imagePath),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color(0xFF64CCF0),
                        foregroundColor: Colors.white, // foreground
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                        size: deviceWidth * 0.03,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: _imageLinkProviderStatus &&
                        _dialogImagePathStatus == imagePath
                    ? const Color.fromRGBO(0, 0, 0, 0.15)
                    : const Color.fromRGBO(0, 0, 0, 0.08),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(1, 1),
              ),
            ],
            color: Colors.white,
          ),
          width: deviceWidth * imageWidthValue,
          child: Image.asset(imagePath),
        ),
      ),
    );
  }

  void _imageEnter(WidgetRef ref, String imagePath) {
    ref.read(dialogImagePathProvider.notifier).update((state) => imagePath);
    ref.read(imageLinkProvider.notifier).update((state) => true);
  }

  void _imageExit(WidgetRef ref) {
    ref.read(imageLinkProvider.notifier).update((state) => false);
  }
}

class DialogmockUpWidget extends ConsumerWidget {
  const DialogmockUpWidget({
    Key? key,
    required this.mockUpImage,
    required this.mockUpimages,
  }) : super(key: key);

  final String mockUpImage;
  final Column mockUpimages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Align(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ImageWidget(heightValue: 0.3, imagePath: mockUpImage),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
            ),
            onPressed: () => _showmockUpDialog(context, mockUpimages),
            child: Icon(
              Icons.play_arrow,
              size: deviceWidth * 0.03,
            ),
          ),
        ],
      ),
    );
  }

  void _showmockUpDialog(
    BuildContext context,
    Column mockUpimages,
  ) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) {
        return Container(
          height: deviceHeight * 0.25,
          margin: EdgeInsets.all(deviceHeight * 0.15),
          child: Center(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30),
                  child: SizedBox(
                    height: deviceHeight * 0.8,
                    child: RawScrollbar(
                      thumbColor: Colors.grey,
                      radius: const Radius.circular(16),
                      thickness: 7,
                      thumbVisibility: true,
                      child: SingleChildScrollView(
                        child: mockUpimages,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: const Color(0xFF64CCF0),
                    foregroundColor: Colors.white, // foreground
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Icon(
                    Icons.close,
                    size: deviceWidth * 0.03,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
