import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/screens/homeScreen/homeUi/drug_list.dart';
import 'package:pharmaconnect/screens/homeScreen/homeUi/image_slider.dart';
import 'package:pharmaconnect/widgets/common_appbar_widget.dart';
import 'package:pharmaconnect/widgets/text_widget.dart';

class HomeForm extends StatelessWidget {
  HomeForm({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: CommonAppBar(
        title: 'PharmaConnect',
        appBar: AppBar(),
        iconButton: false,
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset(
              'assets/images/notification_icon.png',
              fit: BoxFit.contain,
              width: 22,
              height: 22,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSlider(),
                const SizedBox(
                  height: 30,
                ),
                const GreyText(
                  text: 'Sample Drugs',
                  color: MyColor.black,
                  weight: FontWeight.w700,
                  size: 16,
                  font: 'Roboto',
                ),
                const SizedBox(
                  height: 10,
                ),
                const GreyText(
                  text: 'List of drugs assigned to you',
                  color: MyColor.textGray,
                  weight: FontWeight.w500,
                  size: 14,
                  font: 'Roboto',
                ),
                const SizedBox(
                  height: 30,
                ),
                DrugList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
