import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/screens/myOrderScreen/myOrderCubit/my_order_cubit.dart';
import 'package:pharmaconnect/screens/myOrderScreen/myOrderUi/my_order_form.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider<MyOrderCubit>(
      create: (BuildContext context) => MyOrderCubit(),
      child: const MyOrderForm(),
    );
  }
}