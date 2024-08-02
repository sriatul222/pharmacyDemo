import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';

TextStyle textStyleBold = const TextStyle(
    decoration: TextDecoration.none,
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontFamily: "Helvetica1",
    fontSize: 16);

TextStyle textStyleNormal = const TextStyle(
    decoration: TextDecoration.none,
    color: MyColor.inputTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: "Roboto",
    fontSize: 15);

TextStyle textStyleSmall = const TextStyle(
    decoration: TextDecoration.none,
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica1",
    fontSize: 10);

OutlineInputBorder outlineInputBorder =  OutlineInputBorder(
  borderRadius: const BorderRadius.all(Radius.circular(8)),
  borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
);

OutlineInputBorder outlineInputBorderRed = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
  borderSide: BorderSide(color: Colors.red, width: 1),
);
