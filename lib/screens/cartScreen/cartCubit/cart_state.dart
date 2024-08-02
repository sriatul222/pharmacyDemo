import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class CartState extends Equatable {
  const CartState({
    this.status = FormzStatus.pure,
    this.exceptionError,
  });

  final FormzStatus status;
  final String? exceptionError;

  @override
  List<Object?> get props => [status, exceptionError];

  CartState copyWith({
    FormzStatus? status,
    String? error,
  })
  {
    return CartState(
      status: status ?? this.status,
      exceptionError: error ?? exceptionError,
    );
  }
}