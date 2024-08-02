import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/screens/ProfileScreen/ProfileCubit/profile_cubit.dart';
import 'package:pharmaconnect/screens/ProfileScreen/profileUi/profile_form.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider<ProfileCubit>(
      create: (BuildContext context) => ProfileCubit()..firebaseListerner(),
      child: const ProfileForm(),
    );
  }
}