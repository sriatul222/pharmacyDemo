import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/extra/my_utils.dart';
import 'package:pharmaconnect/screens/editProfileScreen/editProfileCubit/edit_profile_cubit.dart';
import 'package:pharmaconnect/screens/editProfileScreen/editProfileCubit/edit_profile_state.dart';
import 'package:pharmaconnect/widgets/button_widget.dart';
import 'package:pharmaconnect/widgets/common_appbar_widget.dart';
import 'package:pharmaconnect/widgets/hint_text.dart';
import 'package:pharmaconnect/widgets/text_input_field.dart';

class EditProfileForm extends StatelessWidget {
   EditProfileForm({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: MyColor.backgroundColor,
        appBar: CommonAppBar(
          title: 'Edit Profile',
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
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
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
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0,left: 35),
                        child: ButtonWidget(
                          buttonName: 'Update Profile',
                          textColor: MyColor.white,
                          borderColor: MyColor.textDarkBlue,
                          innerBorderColor: MyColor.textDarkBlue,
                          onTap: () {
                            if (_formKey.currentState!.validate() && MyUtils.checkClickNetwork(context)) {
                              context
                                  .read<EditProfileCubit>()
                                  .addUserDetails(
                                  context);
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                  BlocBuilder<EditProfileCubit,EditProfileState>(
                      builder: (context, state) {
                        return state.status.isSubmissionInProgress
                            ? Container(
                          height: MediaQuery.of(context).size.height,
                          alignment: Alignment.center,
                          child: LoadingAnimationWidget.fourRotatingDots(
                            color: MyColor.black,
                            size: 70,
                          ),
                        )
                            : Container();
                      }),

                ],
              ),
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
    return BlocBuilder<EditProfileCubit,EditProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: false,
          textEditingController: state.textControllerName,
          validator: (name) {
            return context.read<EditProfileCubit>().nameChanged(name);
          },
          onChanged: (name) {
            context.read<EditProfileCubit>().nameChanged(name);
          },
        );
      },
    );
  }
}
class _SelfMobileInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit,EditProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: false,
          textEditingController: state.textControllerPhone,
          textInputType: TextInputType.number,
          maxLength: 10,
          validator: (mobile) {
            return context.read<EditProfileCubit>().mobileChanged(mobile);
          },
          onChanged: (mobile) {
            context.read<EditProfileCubit>().mobileChanged(mobile);
          },
        );
      },
    );
  }
}

class _SelfEmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit,EditProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: false,
          textEditingController: state.textControllerEmail,
          validator: (email) {
            return context.read<EditProfileCubit>().emailChanged(email);
          },
          onChanged: (email) {
            context.read<EditProfileCubit>().emailChanged(email);
          },
        );
      },
    );
  }
}
class _SelfPractionerInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit,EditProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: false,
          textEditingController: state.textControllerPractionerId,
          validator: (name) {
            return context.read<EditProfileCubit>().practionerIdChanged(name);
          },
          onChanged: (name) {
            context.read<EditProfileCubit>().practionerIdChanged(name);
          },
        );
      },
    );
  }
}
class _SelfBillingInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit,EditProfileState>(
      builder: (context,state){
        return TextInputFields(
          readOnly: false,
          textEditingController: state.textControllerBillingAddress,
          validator: (name) {
            return context.read<EditProfileCubit>().billingAddressChanged(name);
          },
          onChanged: (name) {
            context.read<EditProfileCubit>().billingAddressChanged(name);
          },
        );
      },
    );
  }
}