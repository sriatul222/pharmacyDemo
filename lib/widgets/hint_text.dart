import 'package:flutter/material.dart';

import '../extra/colors.dart';

class HintText extends StatelessWidget {
  final String hint;

  const HintText({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          hint,
          style: const TextStyle(
              decoration: TextDecoration.none,
              color: MyColor.labelColor,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              fontSize: 14),
        ),
      ],
    );
  }
}
class HintEditVoterText extends StatelessWidget {
  final String hint;
  const HintEditVoterText({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return  Text(
      hint,
      style: const TextStyle(
          decoration: TextDecoration.none,
          color: MyColor.black,
          fontFamily: 'Sans',
          fontWeight: FontWeight.w400,
          fontSize: 16),
    );
  }
}
