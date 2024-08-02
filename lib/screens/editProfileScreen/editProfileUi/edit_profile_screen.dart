import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/screens/editProfileScreen/editProfileCubit/edit_profile_cubit.dart';
import 'package:pharmaconnect/screens/editProfileScreen/editProfileUi/edit_profile_form.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider<EditProfileCubit>(
      create: (BuildContext context) => EditProfileCubit(),
      child:  EditProfileForm(),
    );
  }
}