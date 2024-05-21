import 'package:flutter/material.dart';
import 'package:pepsico_loyalty/constants/color.extension.dart';

import 'Regular.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox(
      {super.key, required this.isSelect, required this.title, this.onTap});
  final List<String> title;
  final List<bool> isSelect;
  final Function(int index)? onTap;

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    if (widget.title.length != widget.isSelect.length) {
      return Regular(
        text: "title length and bool length is not same",
        size: 14,
        color: Colors.black,
      //  fontFamily: FontConstants.poppinsregular,
      //  fontWeight: FontWeightManager.regular,
      );
    } else {
      return Wrap(
        children: List.generate(
            widget.title.length,
            (index) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox.adaptive(
                        activeColor: HexColor.fromHex("#282C55"),
                        value: widget.isSelect[index],
                        onChanged: (i) {
                          widget.isSelect[index] = i ?? false;
                          if (widget.onTap != null) {
                            widget.onTap!(index);
                          }
                          setState(() {});
                        }),
                    // 5.0.spaceWidth(),
                    Regular(
                      text: widget.title[index],
                      size: 14,
                      color: Colors.black,
                    //  fontFamily: FontConstants.poppinsmedium,
                      //fontWeight: FontWeightManager.medium,
                    )
                  ],
                )),
      );
    }
  }
}
