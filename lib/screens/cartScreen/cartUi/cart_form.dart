import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/widgets/common_appbar_widget.dart';

class CartForm extends StatelessWidget {
  const CartForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: CommonAppBar(title: 'Cart', appBar: AppBar(),iconButton: false,widgets: [Padding(
        padding: const EdgeInsets.only(right:15.0),
        child: Image.asset('assets/images/notification_icon.png',fit: BoxFit.contain,width: 22,height: 22,),
      )],),
      body: const Center(
        child: Text('No Cart Found',style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
