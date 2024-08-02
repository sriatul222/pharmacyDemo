import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class MyOrderState extends Equatable {
  const MyOrderState({
    this.status = FormzStatus.pure,
    this.exceptionError,
  });

  final FormzStatus status;
  final String? exceptionError;

  @override
  List<Object?> get props => [status, exceptionError];

  MyOrderState copyWith({
    FormzStatus? status,
    String? error,
  })
  {
    return MyOrderState(
      status: status ?? this.status,
      exceptionError: error ?? exceptionError,
    );
  }
}