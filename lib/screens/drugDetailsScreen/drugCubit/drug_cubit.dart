import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugCubit/drug_state.dart';

class DrugCubit extends Cubit<DrugState> {
  DrugCubit() : super(const DrugState());
  void updateIndex(int newIndex) => emit(state.copyWith(activeIndex: newIndex));

}