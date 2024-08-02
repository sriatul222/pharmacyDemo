import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugUi/drug_recomanded.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugUi/drug_slider.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugUi/product_information.dart';
import 'package:pharmaconnect/screens/homeScreen/homeUi/drug_list.dart';
import 'package:pharmaconnect/widgets/common_appbar_widget.dart';
import 'package:pharmaconnect/widgets/text_widget.dart';

class DrugForm extends StatelessWidget {
  const DrugForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: CommonAppBar(
        title: 'Dr. Morepen Blood',
        appBar: AppBar(),
        iconButton: true,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrugSlider(),
              Container(
                width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 0,bottom: 20),
                  height: 30,
                  alignment: Alignment.center,
                color: MyColor.textLightBlue,
                  child: const GreyText(
                    text: 'Maximum of 12 unit can be added in the cart.',
                    color: MyColor.textDarkGray,
                    weight: FontWeight.w500,
                    size: 10,
                    font: 'sans',
                  ),
              ),
              ProductInformation(),
              Drugsuggestion(),

            ],
          ),
        ),
      ),
    );
  }
}
