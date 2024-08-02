import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/extra/common_validator.dart';
import 'package:pharmaconnect/screens/ProfileScreen/ProfileCubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super( ProfileState(textControllerName: TextEditingController(text: ''),textControllerPhone: TextEditingController(text: ''),textControllerEmail: TextEditingController(text: ''),textControllerPractionerId: TextEditingController(text: ''),textControllerBillingAddress: TextEditingController(text: '')));

  void firebaseListerner(){
    FirebaseDatabase.instance.ref('users').onValue.listen((event) {
      final data = event.snapshot.value;
      print('jxsjkx ${data}');
      if (data != null) {
        // If data is not null, print the firstName
        print('User First Name: ${(data as Map)['name']}');
        var map = data as Map;

        state.textControllerName?.text = map['name'];
        state.textControllerPhone?.text = map['phone'];
        state.textControllerEmail?.text = map['email'];
        state.textControllerPractionerId?.text = map['practitionerId'];
        state.textControllerBillingAddress?.text = map['billingAddress'];
      } else {
        print('No data available');
      }
    });
  }


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
    InputValidation.validateEmptyString(value ?? '', 'Please enter your billing address');
    emit(state.copyWith(
      billingAddress: value,
    ));
    return name;
  }
}