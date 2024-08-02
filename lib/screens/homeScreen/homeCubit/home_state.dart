import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class HomeState extends Equatable {
  const HomeState({
    this.status = FormzStatus.pure,
    this.exceptionError,
    this.activeIndex = 0,
  });

  final FormzStatus status;
  final String? exceptionError;
  final int activeIndex;

  @override
  List<Object?> get props => [status, exceptionError,activeIndex];

  HomeState copyWith({
    FormzStatus? status,
    String? error,
    int? activeIndex,
  })
  {
    return HomeState(
      status: status ?? this.status,
      activeIndex: activeIndex ?? this.activeIndex,
      exceptionError: error ?? exceptionError,
    );
  }
}