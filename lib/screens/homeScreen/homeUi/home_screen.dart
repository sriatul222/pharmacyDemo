import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/screens/homeScreen/homeCubit/home_cubit.dart';
import 'package:pharmaconnect/screens/homeScreen/homeUi/home_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider<HomeCubit>(
      create: (BuildContext context) => HomeCubit(),
      child:  HomeForm(),
    );
  }
}