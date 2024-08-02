
import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/extra/common_style.dart';

class TextInputFields extends StatelessWidget {
  final Function(String value) onChanged;
  final String? Function(String? value) validator;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
   final String? hintText;
  final TextEditingController? textEditingController;
  final int maxLength;
  final bool? readOnly;

  const TextInputFields(
      {super.key,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.emailAddress,
      this.textEditingController ,
         this.hintText,
      required this.validator,
      required this.onChanged,
      this.maxLength = 50,this.readOnly});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.disabled,
      style: textStyleNormal,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      validator: validator,
      onChanged: onChanged,
      maxLength: maxLength,
      controller: textEditingController,
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        filled: true,
        counterText: "",
        hintText: hintText,
        hintStyle: const TextStyle(
            decoration: TextDecoration.none,
            color: MyColor.inputTextColor,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            fontSize: 14),
        fillColor: Colors.white,
        alignLabelWithHint: true,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorBorder: outlineInputBorderRed,
        focusedErrorBorder: outlineInputBorderRed,
      ),
    );
  }
}
