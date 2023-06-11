// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PickupWidget extends StatelessWidget {
  String day;
  String datee;
  String daytime;
  Color boxcolor;
  Color daycolor;
  PickupWidget(
      {super.key,
      required this.day,
      required this.datee,
      required this.daytime,
      required this.boxcolor,
      required this.daycolor
      });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.2;
    final double containerHeight = screenSize.height * 0.15;
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
         border: Border.all(
                color: Colors.black,
                width: 1
          ),
         
        borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Container(
                color: boxcolor,
                height: 60,
                width: containerWidth,
                child: Center(
                    child: Text(
                  day,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: daycolor),
                )),
              )),
          Text(
            datee,
            style: const TextStyle(fontSize: 15),
          ),
          Text(
            daytime,
            style: const TextStyle(fontSize: 15),
          ),
          
        ],
      ),
    );
  }
}
