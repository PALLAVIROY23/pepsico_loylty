import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_animtype.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class MyAlert {
  static onSuccess(BuildContext context, {String? text, Function()? ondone}) =>
      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        animType: QuickAlertAnimType.slideInDown,
        text: text,
        onConfirmBtnTap: () {
          Navigator.pop(context);
          if (ondone != null) {
            ondone();
          }
        },
      );
  static onError(BuildContext context, {String? text}) => QuickAlert.show(
        context: context,
        animType: QuickAlertAnimType.slideInLeft,
        type: QuickAlertType.error,
        text: text,
      );
  static onInfo(BuildContext context, {String? text}) => QuickAlert.show(
        context: context,
        animType: QuickAlertAnimType.slideInRight,
        type: QuickAlertType.info,
        text: text,
        onCancelBtnTap: () => Navigator.pop(context),
        onConfirmBtnTap: () => Navigator.pop(context),
      );
  static onWarning(BuildContext context, {String? text}) => QuickAlert.show(
        context: context,
        animType: QuickAlertAnimType.slideInRight,
        type: QuickAlertType.warning,
        text: text,
        onCancelBtnTap: () => Navigator.pop(context),
      );
  static onProgress(BuildContext context, {String? title}) => QuickAlert.show(
        context: context,
        animType: QuickAlertAnimType.slideInRight,
        type: QuickAlertType.loading,
        text: title,
      );
}
