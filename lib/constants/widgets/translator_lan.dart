// ignore_for_file: non_constant_identifier_names

import 'package:takse/app/core/utils/shared_preference.dart';
import 'package:translator/translator.dart';

translate_value(String value) async {
  final translator = GoogleTranslator();
  String val = await User_Perference().getlanguage();
  return (await translator.translate(value,
          from: 'auto', to: val == "English" ? 'en' : "hi"))
      .text;
}
