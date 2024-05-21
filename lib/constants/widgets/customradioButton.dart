import 'package:clearning/app/core/resources/color_manager.dart';
import 'package:clearning/app/core/utils/CustomFunctions.dart';
import 'package:clearning/app/core/utils/Extenstion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton(
      {super.key,
      required this.selectingIndex,
      required this.title,
      required this.onclick});
  final List<Widget> title;
  final int selectingIndex;
  final Function(int i) onclick;

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      spacing: 10,
      children: List.generate(
          widget.title.length,
          (index) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.selectingIndex != index)
                    GestureDetector(
                      onTap: () {
                        widget.onclick(index);
                        CustomPrint("Index of $index is click ");
                      },
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.themeColor,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                        ).toCenter().paddingAll(1),
                      ),
                    )
                  else
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: ColorManager.themeColor,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.themeColor,
                        ).toCenter().paddingAll(2),
                      ).toCenter().paddingAll(1),
                    ),
                  8.0.spaceWidth(),
                  widget.title[index],
                ],
              )),
    );
  }
}
