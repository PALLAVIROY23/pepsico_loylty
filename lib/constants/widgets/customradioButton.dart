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
                      },
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Center(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                          ),
                        ).paddingAll(1),
                      ),
                    )
                  else
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                        ).paddingAll(2),
                      ).paddingAll(1),
                    ),
                  SizedBox(width: 8),
                  widget.title[index],
                ],
              )),
    );
  }
}
