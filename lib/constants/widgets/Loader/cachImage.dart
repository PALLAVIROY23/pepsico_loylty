// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'LoadingType.dart';


Widget cacheImage(String url, double? height, double? width, BoxFit? fit,
    {BoxShape shape = BoxShape.rectangle,
    BorderRadius? borderRadius,
    double scale = 1.0,
    Color? bgcolor = Colors.transparent,
    Border? border,
    
    Widget? errorwidget,
    Map<String, String>? header}) {
  return CachedNetworkImage(
    httpHeaders: header,
    imageUrl:
        "https://takseservicemall.s3.ap-south-1.amazonaws.com/static/$url",
    imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: borderRadius,
          shape: shape,
          border: border,
          image: height == null
              ? null
              : DecorationImage(image: imageProvider, fit: fit, scale: scale),
        ),
        child: height == null
            ? Image(
                image: imageProvider,
                fit: fit,
                width: width,
                height: height,
              )
            : null),
    placeholder: (context, url) => Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
      padding: const EdgeInsets.all(5),
      child: AnimatedLoadingWidget.spinCircle(
          color: Colors.red, size: 18),
    ),
    errorWidget: (context, url, error) => Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
      child: errorwidget ?? Image.asset("assets/images/nophoto.png"),
    ),
  );
}
