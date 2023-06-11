// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TimeSlotWidget extends StatelessWidget {
  Color boxcolor;
  String timee;
  Color fontcolor;
  TimeSlotWidget({required this.boxcolor, required this.timee,required this.fontcolor, super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.25;
    final double containerHeight = screenSize.height * 0.06;
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        color: boxcolor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          timee,
          style: TextStyle(color: fontcolor,fontSize: 15),
        ),
      ),
    );
  }
}
