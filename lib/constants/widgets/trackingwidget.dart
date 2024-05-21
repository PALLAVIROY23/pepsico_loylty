import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../color.extension.dart';
import 'Regular.dart';

class TrackerWidget extends StatefulWidget {
  ///This variable is used to set status of order, this get only enum which is already in a package below example present.
  /// Status.order
  final Status? status;

  /// This variable is used to change color of active animation border.
  final Color? activeColor;

  /// This variable is used to change color of inactive animation border.
  final Color? inActiveColor;

  /// This variable is used to change style of heading title text.
  final TextStyle? headingTitleStyle;

  /// This variable is used to change style of heading date text.
  final TextStyle? headingDateTextStyle;

  /// This variable is used to change style of sub title text.
  final TextStyle? subTitleTextStyle;

  final List<RoutesPointData> orderTitleAndDateList;

  /// This variable is used to change style of sub date text.
  final TextStyle? subDateTextStyle;
  int reachindex;
  TrackerWidget(
      {Key? key,
      required this.status,
      this.activeColor,
      this.inActiveColor,
      required this.orderTitleAndDateList,
      this.headingTitleStyle,
      this.headingDateTextStyle,
      this.subTitleTextStyle,
      required this.reachindex,
      this.subDateTextStyle})
      : super(key: key);

  @override
  State<TrackerWidget> createState() => _TrackerWidgetState();
}

class _TrackerWidgetState extends State<TrackerWidget>
    with TickerProviderStateMixin {
  List<AnimationController> controllerList = [];

  ///This is first animation progress bar controller.
  AnimationController? controller;

  ///This is second animation progress bar controller.
  AnimationController? controller2;

  ///This is third animation progress bar controller.
  AnimationController? controller3;
  AnimationController? controller4;
  AnimationController? controller5;
  AnimationController? controller6;
  AnimationController? controller7;

  ///This is conditional variable.
  bool isFirst = false;
  bool isSecond = false;
  bool isThird = false;
  List<dynamic> contoll = [];

  @override
  void initState() {
    if (widget.reachindex == 0) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
          }
          setState(() {});
        });
    } else if (widget.reachindex == 1) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.5) {
            controller?.stop();
            controller2?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });
    } else if (widget.reachindex == 2) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            controller3?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.5) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize third controller
      controller3 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller3?.value != null && controller3!.value > 0.99) {
            controller3?.stop();
            isThird = true;
          }
          setState(() {});
        });
    } else if (widget.reachindex == 3) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            controller3?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize third controller
      controller3 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller3?.value != null && controller3!.value > 0.5) {
            controller3?.stop();
            isThird = true;
          }
          setState(() {});
        });

      ///initialize fourth controller
      controller4 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller4?.value != null && controller4!.value > 0.99) {
            controller4?.stop();
            isThird = true;
          }
          setState(() {});
        });
    } else if (widget.reachindex == 4) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            controller3?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize third controller
      controller3 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller3?.value != null && controller3!.value > 0.99) {
            controller3?.stop();
            isThird = true;
          }
          setState(() {});
        });

      ///initialize fourth controller
      controller4 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller4?.value != null && controller4!.value > 0.99) {
            controller4?.stop();
            isThird = true;
          }
          setState(() {});
        });

      /// initialize fifth controller
      controller5 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller5?.value != null && controller5!.value > 0.99) {
            controller5?.stop();
            isThird = true;
          }
          setState(() {});
        });
    } else if (widget.reachindex == 5) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            controller3?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize third controller
      controller3 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller3?.value != null && controller3!.value > 0.99) {
            controller3?.stop();
            isThird = true;
          }
          setState(() {});
        });

      ///initialize fourth controller
      controller4 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller4?.value != null && controller4!.value > 0.99) {
            controller4?.stop();
            isThird = true;
          }
          setState(() {});
        });

      /// initialize fifth controller
      controller5 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller5?.value != null && controller5!.value > 0.99) {
            controller5?.stop();
            isThird = true;
          }
          setState(() {});
        });

      /// initialize sixth controller
      controller6 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller6?.value != null && controller6!.value > 0.99) {
            controller6?.stop();
            isThird = true;
          }
          setState(() {});
        });
    } else if (widget.reachindex == 6) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            controller3?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize third controller
      controller3 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller3?.value != null && controller3!.value > 0.99) {
            controller3?.stop();
            isThird = true;
          }
          setState(() {});
        });

      ///initialize fourth controller
      controller4 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller4?.value != null && controller4!.value > 0.99) {
            controller4?.stop();
            isThird = true;
          }
          setState(() {});
        });

      /// initialize fifth controller
      controller5 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller5?.value != null && controller5!.value > 0.99) {
            controller5?.stop();
            isThird = true;
          }
          setState(() {});
        });
    } else if (widget.reachindex == 7) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            controller3?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize third controller
      controller3 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller3?.value != null && controller3!.value > 0.99) {
            controller3?.stop();
            isThird = true;
          }
          setState(() {});
        });

      ///initialize fourth controller
      controller4 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller4?.value != null && controller4!.value > 0.99) {
            controller4?.stop();
            isThird = true;
          }
          setState(() {});
        });

      /// initialize fifth controller
      controller5 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller5?.value != null && controller5!.value > 0.99) {
            controller5?.stop();
            isThird = true;
          }
          setState(() {});
        });

      /// initialize sixth controller
      controller6 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller6?.value != null && controller6!.value > 0.99) {
            controller6?.stop();
            isThird = true;
          }
          setState(() {});
        });
      controller7 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller7?.value != null && controller7!.value > 0.99) {
            controller7?.stop();
            isThird = true;
          }
          setState(() {});
        });
    }

    controller?.repeat(reverse: false);
    controller2?.repeat(reverse: false);
    controller3?.repeat(reverse: false);
    controller4?.repeat(reverse: false);
    controller5?.repeat(reverse: false);
    controller6?.repeat(reverse: false);
    controller7?.repeat(reverse: false);
    contoll.addAll([
      controller,
      controller2,
      controller3,
      controller4,
      controller5,
      controller6,
      controller7
    ]);
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      widget.orderTitleAndDateList.length - 1,
      (index) => Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: widget.reachindex > index
                            ? widget.activeColor
                            : widget.reachindex == index
                                ? HexColor.fromHex("#F69E05")
                                : widget.inActiveColor ?? Colors.green,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Regular(
                        text: timeStamptoDateTime(
                            widget.orderTitleAndDateList[index].pickUpTime),
                        size: 12,
                        color: HexColor.fromHex("#76819B"),
                        //fontFamily: FontConstants.latomedium,
                        //fontWeight: FontWeightManager.medium,
                      ),
                      const SizedBox(height: 4),
                      Regular(
                        text: widget.orderTitleAndDateList[index]
                            .routePointDetails.routePointName,
                        size: 14,
                        color: HexColor.fromHex("#000000"),
                       // fontFamily: FontConstants.latomedium,
                      //  fontWeight: FontWeightManager.medium,
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: SizedBox(
                  width: 2,
                  height: widget.orderTitleAndDateList.isNotEmpty
                      ? widget.orderTitleAndDateList.length * 6
                      : 0,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: LinearProgressIndicator(
                      value: contoll[index]?.value ?? 0.0,
                      backgroundColor: widget.reachindex - 1 > index
                          ? widget.activeColor
                          : widget.reachindex - 1 == index
                              ? HexColor.fromHex("#F69E05")
                              : widget.inActiveColor ?? Colors.grey[300],
                      color: widget.reachindex - 1 > index
                          ? widget.activeColor
                          : widget.reachindex - 1 == index
                              ? HexColor.fromHex("#F69E05")
                              : widget.inActiveColor ?? Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: index == widget.orderTitleAndDateList.length - 2,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: widget.status?.name == Status.end.name &&
                                  isThird == true
                              ? widget.activeColor ?? Colors.green
                              : widget.inActiveColor ?? Colors.grey[300],
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Regular(
                          // "To about, June 20"
                          text: timeStamptoDateTime(
                              widget.orderTitleAndDateList.last.pickUpTime),
                          size: 12,
                          color: HexColor.fromHex("#76819B"),
                         // fontFamily: FontConstants.latomedium,
                        //  fontWeight: FontWeightManager.medium,
                        ),
                        Regular(
                          text: widget.orderTitleAndDateList.last
                              .routePointDetails.routePointName,
                          size: 14,
                          color: HexColor.fromHex("#000000"),
                         // fontFamily: FontConstants.latomedium,
                          //fontWeight: FontWeightManager.medium,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  // TimeStamp to DateTime
  String timeStamptoDateTime(int timestamp) {
    dynamic date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    date = DateFormat('hh:mm a').format(date);
    return date;
  }
}

class TextDto {
  String? title;
  String? date;

  TextDto(this.title, this.date);
}

enum Status {
  start,
  mid,
  next,
  end,
  ///////////////////////////
}
