import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

class ProfileState extends Equatable {
  const ProfileState({
    this.status = FormzStatus.pure,
    this.exceptionError,
    this.name,
    this.textControllerName,
    this.phone,
    this.textControllerPhone,
    this.email,
    this.textControllerEmail,
    this.practionerId,
    this.textControllerPractionerId,
    this.billingAddress,
    this.textControllerBillingAddress,
  });

  final FormzStatus status;
  final String? exceptionError;
  final String? name;
  final TextEditingController? textControllerName;
  final String? phone;
  final TextEditingController? textControllerPhone;
  final String? email;
  final TextEditingController? textControllerEmail;
  final String? practionerId;
  final TextEditingController? textControllerPractionerId;
  final String? billingAddress;
  final TextEditingController? textControllerBillingAddress;

  @override
  List<Object?> get props => [status, exceptionError,name,textControllerName,phone,textControllerPhone,email,textControllerEmail,practionerId,textControllerPractionerId,billingAddress,textControllerBillingAddress];

  ProfileState copyWith({
    FormzStatus? status,
    String? error,
    String? name,
    TextEditingController? textControllerName,
    String? phone,
    TextEditingController? textControllerPhone,
    String? email,
    TextEditingController? textControllerEmail,
    String? practionerId,
    TextEditingController? textControllerPractionerId,
    String? billingAddress,
    TextEditingController? textControllerBillingAddress,
  })
  {
    return ProfileState(
      status: status ?? this.status,
      exceptionError: error ?? exceptionError,
      name: name ?? this.name,
      textControllerName: textControllerName ?? this.textControllerName,
      phone: phone ?? this.phone,
      textControllerPhone: textControllerPhone ?? this.textControllerPhone,
      email: email ?? this.email,
      textControllerEmail: textControllerEmail ?? this.textControllerEmail,
      practionerId: practionerId ?? this.practionerId,
      textControllerPractionerId: textControllerPractionerId ?? this.textControllerPractionerId,
      billingAddress: billingAddress ?? this.billingAddress,
      textControllerBillingAddress: textControllerBillingAddress ?? this.textControllerBillingAddress,

    );
  }
}