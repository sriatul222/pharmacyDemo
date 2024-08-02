import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/screens/ProfileScreen/ProfileCubit/profile_cubit.dart';
import 'package:pharmaconnect/screens/ProfileScreen/ProfileCubit/profile_state.dart';
import 'package:pharmaconnect/screens/ProfileScreen/profileUi/header_profile.dart';
import 'package:pharmaconnect/widgets/common_appbar_widget.dart';
import 'package:pharmaconnect/widgets/hint_text.dart';
import 'package:pharmaconnect/widgets/text_input_field.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: CommonAppBar(
        title: 'Profile',
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
              children:  [
                const SizedBox(
                  height: 10,
                ),
                const HeaderProfileView(),
                const SizedBox(
                  height: 40,
                ),
                const HintText(
                  hint: 'Name',
                ),
                const SizedBox(
                  height: 8,
                ),
                _SelfNameInputField(),
                const SizedBox(
                  height: 25,
                ),
                const HintText(
                  hint: 'Phone',
                ),
                const SizedBox(
                  height: 8,
                ),
                _SelfMobileInputField(),
                const SizedBox(
                  height: 25,
                ),
                const HintText(
                  hint: 'Email',
                ),
                const SizedBox(
                  height: 8,
                ),
                _SelfEmailInputField(),
                const SizedBox(
                  height: 25,
                ),
                const HintText(
                  hint: 'Practioner ID',
                ),
                const SizedBox(
                  height: 8,
                ),
                _SelfPractionerInputField(),
                const SizedBox(
                  height: 25,
                ),
                const HintText(
                  hint: 'Billing Address',
                ),
                const SizedBox(
                  height: 8,
                ),
                _SelfBillingInputField(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class _SelfNameInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit,ProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: true,
          textEditingController: state.textControllerName,
          validator: (name) {
            return context.read<ProfileCubit>().nameChanged(name);
          },
          onChanged: (name) {
            context.read<ProfileCubit>().nameChanged(name);
          },
        );
      },
    );
  }
}
class _SelfMobileInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit,ProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: true,
          textEditingController: state.textControllerPhone,
          textInputType: TextInputType.number,
          maxLength: 10,
          validator: (mobile) {
            return context.read<ProfileCubit>().mobileChanged(mobile);
          },
          onChanged: (mobile) {
            context.read<ProfileCubit>().mobileChanged(mobile);
          },
        );
      },
    );
  }
}

class _SelfEmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit,ProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: true,
          textEditingController: state.textControllerEmail,
          validator: (email) {
            return context.read<ProfileCubit>().emailChanged(email);
          },
          onChanged: (email) {
            context.read<ProfileCubit>().emailChanged(email);
          },
        );
      },
    );
  }
}
class _SelfPractionerInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit,ProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: true,
          textEditingController: state.textControllerPractionerId,
          validator: (name) {
            return context.read<ProfileCubit>().practionerIdChanged(name);
          },
          onChanged: (name) {
            context.read<ProfileCubit>().practionerIdChanged(name);
          },
        );
      },
    );
  }
}
class _SelfBillingInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit,ProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: true,
          textEditingController: state.textControllerBillingAddress,
          validator: (name) {
            return context.read<ProfileCubit>().billingAddressChanged(name);
          },
          onChanged: (name) {
            context.read<ProfileCubit>().billingAddressChanged(name);
          },
        );
      },
    );
  }
}