// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, avoid_print, empty_catches

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Regular.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({
    Key? key,
    this.HintText,
    this.PerfixIcon,
    this.Radius,
    this.SurfixIcon,
    this.SurfixIconPerssedIcon,
    this.ValidationErrorMessage,
    required this.width,
    this.controller,
    required this.TextInputAction,
    required this.keyboardType,
    this.obscureText = false,
    required this.isOutlineInputBorder,
    this.label,
    this.maxline,
    this.IsEnabled,
    this.lenghtofInput,
    this.Innercolor,
    this.IsAadhar,
    this.height,
    this.minline,
    this.FocusborderColor,
    this.onchangeFuntion,
    this.TextStyleforLabelText,
    this.TextStyleForHintText,
    this.decoration,
    this.errortext,
    this.contentPadding,
    this.outlineborder,
    this.textCapitalization,
    this.cursorColor,
    this.styleoftextfeild,
    this.onTap,
    this.validator,
    this.IsCreditCard,
    this.errortextStyle,
    this.onFieldSubmitted,
    this.onEditingComplete,
  }) : super(key: key);
  int? lenghtofInput;
  double? width, Radius;
  String? HintText;
  String? ValidationErrorMessage;
  Widget? label;
  void Function(String)? onFieldSubmitted;
  Widget? SurfixIcon, PerfixIcon;
  Function? SurfixIconPerssedIcon;
  void Function()? onEditingComplete;
  TextEditingController? controller;
  TextInputType? keyboardType;
  bool obscureText;
  double? height;
  bool? IsEnabled;
  TextStyle? TextStyleforLabelText, TextStyleForHintText, errortextStyle;
  dynamic Innercolor;
  EdgeInsetsGeometry? contentPadding;
  var TextInputAction;
  int? maxline, minline;
  bool isOutlineInputBorder;
  bool? IsAadhar = false;
  bool? IsCreditCard;
  Function(String? w)? onchangeFuntion;
  Color? FocusborderColor;
  String? errortext;
  Decoration? decoration;
  InputBorder? outlineborder;
  Color? cursorColor;
  TextStyle? styleoftextfeild;
  void Function()? onTap;
  TextCapitalization? textCapitalization;

  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: width,
          decoration: decoration ??
              BoxDecoration(
                  borderRadius: BorderRadius.circular(Radius ?? 0),
                  color: Innercolor ?? Colors.white),
          child: TextFormField(
            validator: validator,
            onTap: onTap,
            cursorColor: cursorColor,
            maxLines: maxline,
            textCapitalization:
                textCapitalization ?? TextCapitalization.sentences,
            minLines: minline,
            enabled: IsEnabled,
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            onFieldSubmitted: onFieldSubmitted,
            onEditingComplete: onEditingComplete,
            style: styleoftextfeild ??
                TextStyle(color: Colors.black, fontSize: 16),
            inputFormatters: keyboardType == TextInputType.phone
                ? IsAadhar == true
                    ? [
                        CustomInputFormatter(),
                        LengthLimitingTextInputFormatter(14)
                      ]
                    : IsCreditCard == true && IsAadhar != true
                        ? [
                            CustomInputFormatter(),
                            LengthLimitingTextInputFormatter(19)
                          ]
                        : [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(
                                lenghtofInput ?? 10)
                          ]
                : keyboardType == TextInputType.number
                    ? [
                        FilteringTextInputFormatter.allow(RegExp('[0-9.]+')),
                        LengthLimitingTextInputFormatter(lenghtofInput ?? 100)
                      ]
                    : keyboardType == TextInputType.name
                        ? [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z ]'))
                          ]
                        : [FilteringTextInputFormatter.singleLineFormatter],
            onChanged: onchangeFuntion,
            decoration: InputDecoration(
                isCollapsed: true,
                focusedBorder: !isOutlineInputBorder
                    ? InputBorder.none
                    : OutlineInputBorder(
                        borderSide: BorderSide(
                            color: FocusborderColor ?? Colors.blueGrey),
                        borderRadius: BorderRadius.circular(Radius ?? 0),
                      ),
                contentPadding: contentPadding ??
                    EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                labelStyle: TextStyleforLabelText ??
                    TextStyle(color: Colors.black),
                label: label,
                enabled: IsEnabled ?? true,
                prefixIcon: PerfixIcon,
                suffixIcon: SurfixIcon,
                hintText: HintText,
                hintStyle: TextStyleForHintText ??
                    TextStyle(color: Colors.grey.shade600),
                border: isOutlineInputBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Radius ?? 0))
                    : outlineborder),
          ),
        ),
        (errortext ?? '').isEmpty
            ? SizedBox()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: errortextStyle != null
                        ? SizedBox(
                            width: width,
                            child: Text(errortext ?? "", style: errortextStyle))
                        : Regular(
                            text: errortext ?? '',
                            size: 16,
                            color: Colors.red,
                            start: true,
                          ),
                  )
                ],
              )
      ],
    );
  }
}

class CustomInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    text = text.replaceAll(RegExp(r'(\s)|(\D)'), '');

    int offset = newValue.selection.start;

    var subText =
        newValue.text.substring(0, offset).replaceAll(RegExp(r'(\s)|(\D)'), '');

    int realTrimOffset = subText.length;

// if (newValue.selection.baseOffset == 0) {

// return newValue;

// }

    var buffer = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);

      var nonZeroIndex = i + 1;

      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write(
            ' '); // Replace this with anything you want to put after each 4 numbers
      }

// This block is only executed once

      if (nonZeroIndex % 4 == 0 &&
          subText.length == nonZeroIndex &&
          nonZeroIndex > 4) {
        int moveCursorToRigth = nonZeroIndex ~/ 4 - 1;

        realTrimOffset += moveCursorToRigth;
      }

// This block is only executed once

      if (nonZeroIndex % 4 != 0 && subText.length == nonZeroIndex) {
        int moveCursorToRigth = nonZeroIndex ~/ 4;

        realTrimOffset += moveCursorToRigth;
      }
    }

    var string = buffer.toString();

    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: realTrimOffset));
  }
}
