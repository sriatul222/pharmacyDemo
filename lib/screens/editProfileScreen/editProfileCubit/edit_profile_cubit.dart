import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:pharmaconnect/extra/common_validator.dart';
import 'package:pharmaconnect/screens/editProfileScreen/editProfileCubit/edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(const EditProfileState());

  final FirebaseDatabase _firebaseDatabase = FirebaseDatabase.instance;


  String? nameChanged(String? value) {
    final name =
    InputValidation.validateEmptyString(value ?? '', 'Please enter your name');
    emit(state.copyWith(
      name: value,
    ));
    return name;
  }
  String? emailChanged(String? value) {
    final email =
    InputValidation.validateEmail(value ?? '', 'Please enter your E-mail');
    emit(state.copyWith(
      email: value,
    ));
    return email;
  }
  String? mobileChanged(String? value) {
    final mobile =
    InputValidation.validatePhoneNumber(value ?? '', 'Please enter your mobile');
    emit(state.copyWith(
      phone: value,
    ));
    return mobile;
  }
  String? practionerIdChanged(String? value) {
    final name =
    InputValidation.validateEmptyString(value ?? '', 'Please enter your practionerId');
    emit(state.copyWith(
      practionerId: value,
    ));
    return name;
  }
  String? billingAddressChanged(String? value) {
    final name =
    InputValidation.subjectReasonValidateEmptyString(value ?? '', 'Please enter your billing address');
    emit(state.copyWith(
      billingAddress: value,
    ));
    return name;
  }
  void loadData(context) {

    Future.delayed(const Duration(seconds: 2)).then((_) => {
      emit(state.copyWith(status: FormzStatus.submissionSuccess)),

    });
  }

  Future<void> addUserDetails(context) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _firebaseDatabase.ref('users').set(<String,String>{
        'name': state.name ?? '',
        'email': state.email ?? '',
        'phone': state.phone ?? '',
        'practitionerId': state.practionerId ?? '',
        'billingAddress': state.billingAddress ?? '',
      });

      debugPrint('User details added successfully!');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User details added successfully!')),
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
      Navigator.pop(context);
    } catch (e) {
      debugPrint('Failed to add user details: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to add user details')),
      );
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

}