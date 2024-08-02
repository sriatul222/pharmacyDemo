import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/screens/myOrderScreen/myOrderUi/my_order_details.dart';
import 'package:pharmaconnect/widgets/common_appbar_widget.dart';

class MyOrderForm extends StatelessWidget {
  const MyOrderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: CommonAppBar(
        title: 'My Orders',
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
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            MyOrderDetails(),
            SizedBox(height: 18,),
            MyOrderDetails(),
          ],
        ),
      ),
    );
  }
}
