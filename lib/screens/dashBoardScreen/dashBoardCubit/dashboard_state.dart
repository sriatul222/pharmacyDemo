
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:pharmaconnect/screens/ProfileScreen/profileUi/profile_screen.dart';
import 'package:pharmaconnect/screens/cartScreen/cartUi/cart_screen.dart';
import 'package:pharmaconnect/screens/homeScreen/homeUi/home_screen.dart';
import 'package:pharmaconnect/screens/myOrderScreen/myOrderUi/my_order_screen.dart';

class DashBoardState extends Equatable {
  const DashBoardState({
    this.status = FormzStatus.pure,
    this.exceptionError,
    this.currentTab = 0,
    required this.pageController,
    this.topLevelPages = const [HomeScreen(),
      MyOrderScreen(),
      CartScreen(),
      ProfileScreen()],
  });

  final FormzStatus status;
  final String? exceptionError;
  final int currentTab;
  final PageController pageController;
  final List<Widget> topLevelPages;

  @override
  List<Object?> get props => [status, exceptionError,currentTab,pageController,topLevelPages];

  DashBoardState copyWith({
    FormzStatus? status,
    String? error,
    int? currentTab,
    PageController? pageController,
    List<Widget>? topLevelPages,
  })
  {
    return DashBoardState(
      status: status ?? this.status,
      exceptionError: error ?? exceptionError,
      currentTab: currentTab ?? this.currentTab,
      pageController: pageController ?? this.pageController,
      topLevelPages: topLevelPages ?? this.topLevelPages,
    );
  }
}