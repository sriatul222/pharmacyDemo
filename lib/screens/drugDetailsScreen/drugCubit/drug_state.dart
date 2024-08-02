import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class DrugState extends Equatable {
  const DrugState({
    this.status = FormzStatus.pure,
    this.exceptionError,
    this.activeIndex = 0,

  });

  final FormzStatus status;
  final String? exceptionError;
  final int activeIndex;


  @override
  List<Object?> get props => [status, exceptionError,activeIndex];

  DrugState copyWith({
    FormzStatus? status,
    String? error,
    int? activeIndex,

  })
  {
    return DrugState(
      status: status ?? this.status,
      exceptionError: error ?? exceptionError,
      activeIndex: activeIndex ?? this.activeIndex,

    );
  }
}