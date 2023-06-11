// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  String msg;
  Color boxcolor;
  Color txtcolor;
  Color bordercolor;
  ChatBubble({super.key,required this.msg,required this.boxcolor,required this.txtcolor,required this.bordercolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
        top: 10,
      ),
      decoration: BoxDecoration(
        color: boxcolor,
        border: Border.all(color: bordercolor),
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            topLeft: Radius.circular(12)),
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          msg,
          style: TextStyle(
            color: txtcolor,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
