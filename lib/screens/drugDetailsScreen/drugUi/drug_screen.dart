import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugCubit/drug_cubit.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugUi/drug_form.dart';

class DrugScreen extends StatelessWidget {
  const DrugScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider<DrugCubit>(
      create: (BuildContext context) => DrugCubit(),
      child:  DrugForm(),
    );
  }
}