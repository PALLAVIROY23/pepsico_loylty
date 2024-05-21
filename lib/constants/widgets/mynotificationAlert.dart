// ignore_for_file: file_names

import 'dart:async';

import 'package:clearning/app/core/Animation/animatedclick.dart';
import 'package:clearning/app/core/utils/cachImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepsico_loyalty/constants/color.extension.dart';

class MyNotificationAlert extends StatefulWidget {
  const MyNotificationAlert({super.key, this.image = ""});
  final String image;

  @override
  State<MyNotificationAlert> createState() => _MyNotificationAlertState();
}

class _MyNotificationAlertState extends State<MyNotificationAlert> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    // ignore: no_leading_underscores_for_local_identifiers
    Future<Size> _calculateImageDimension(String url) {
      Completer<Size> completer = Completer();
      Image image = Image.network(url);
      image.image.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener(
          (ImageInfo image, bool synchronousCall) {
            var myImage = image.image;
            Size size =
                Size(myImage.width.toDouble(), myImage.height.toDouble());
            completer.complete(size);
          },
        ),
      );
      return completer.future;
    }

    return Container(
      // width: size.width,
      // height: size.height,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Stack(
        children: [
          FutureBuilder(
              future: _calculateImageDimension(widget.image),
              initialData: Size(size.width, size.height * 0.8),
              builder: (context, a) {
                Size imagesize = a.data ?? Size(size.width, size.height);
                return cacheImage(
                  widget.image,
                  imagesize.height,
                  imagesize.width,
                  BoxFit.fill,
                );
              }),
          Positioned(
            top: 0,
            right: 0,
            child: MyClick(
              onPressed: () => Get.back(),
              child: CircleAvatar(
                backgroundColor: HexColor.fromHex("#292a53"),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                    child: Icon(
                      Icons.close_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
