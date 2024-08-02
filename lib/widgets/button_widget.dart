import 'package:flutter/material.dart';
import 'package:pharmaconnect/widgets/text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonName;
  final Color borderColor;
  final Color innerBorderColor;
  final Color textColor;
  final dynamic onTap;

  const ButtonWidget(
      {super.key, required this.buttonName, required this.onTap, required this.borderColor, required this.innerBorderColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
              color: innerBorderColor,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: borderColor),
        child: GreyText(text: buttonName,color:textColor,weight: FontWeight.w500,size: 18,font: 'Sans',),
      ),
    );
  }
}
