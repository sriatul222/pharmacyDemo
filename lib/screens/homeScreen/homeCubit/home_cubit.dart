import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/screens/homeScreen/homeCubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());
  void updateIndex(int newIndex) => emit(state.copyWith(activeIndex: newIndex));
}