import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit to manage the expanded state
class ProductInfoCubit extends Cubit<bool> {
  ProductInfoCubit() : super(false);

  // Toggle the expanded state
  void toggleExpanded() => emit(!state);
}
