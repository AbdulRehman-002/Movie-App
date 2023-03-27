import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

class AppComponents {
  Widget button(
      {required String text,
      required Function()? onTap,
      double height = 60,
      double width = double.infinity,
      Color backgroundColor = primaryColor,
      Color? borderColor,
      Color? shadowColor,
      double borderRadius = 10,
      Widget? child}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                spreadRadius: 1,
                blurRadius: 2,
                color: shadowColor ?? primaryColor.withOpacity(0.2))
          ],
          borderRadius: BorderRadius.all(Radius.circular(borderRadius + 1)),
          border: Border.all(color: borderColor ?? backgroundColor)),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
            shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(borderRadius))))),
        child: child ??
            Text(text,
                style: poppinsStyle(
                    size: 16, weight: FontWeight.w700, color: kwhiteColor)),
        onPressed: () => onTap!(),
      ),
    );
  }
}
