// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../color.extension.dart';

Widget myDropDown(
    Size size,
    List<String> datalist,
    String selectedValue, {
      double? width,
      double? menuMaxHeight,
      double? heigth,
      String image = '',
      BoxDecoration? decoration,
      TextStyle? selecttextstyle,
      TextStyle? unselecttextstyle,
      bool? isedpanded,
      double? imageandtextgapping = 0.0,
      EdgeInsets? padding,
      void Function(String?)? onChanged,
    }) {

  return Container(
    width: width,
    height: heigth,
    padding: padding ?? EdgeInsets.symmetric(horizontal: 5),
    alignment: Alignment.centerLeft,
    decoration: decoration,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Visibility(
          visible: image.isNotEmpty,
          child: Center(
            child: SizedBox(
              child: Image.asset(
                image,
                height: 25,
                width: 25,
              ),
            ),
          ),
        ),
        SizedBox(width: imageandtextgapping),
        Visibility(visible: image.isNotEmpty, child: const SizedBox(width: 5)),
        Expanded(
          // width: 100,
          child: DropdownButton(
              value: selectedValue,
              menuMaxHeight: menuMaxHeight,
              // style: TextStyle(fontFamily: FontConstants.poppinsregular),
              autofocus: true,
              borderRadius: BorderRadius.circular(10),
              alignment: Alignment.bottomCenter,
              underline: const SizedBox(),
              isExpanded: isedpanded ?? true,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: HexColor.fromHex("#9B9B9B"),
                size: 15,
              ),
              items: datalist.map((String items) {
                return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: items == datalist.first
                          ? unselecttextstyle
                          : selecttextstyle,
                    ));
              }).toList(),
              onChanged: onChanged),
        ),
      ],
    ),
  );
}
