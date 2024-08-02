import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:pharmaconnect/screens/dashBoardScreen/dashBoardUi/dashboard_screen.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugUi/drug_screen.dart';
import 'package:pharmaconnect/screens/editProfileScreen/editProfileUi/edit_profile_screen.dart';

class RouteHandlers {

  static Handler dashBoardHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const DashBoardScreen());
  static Handler drugScreenHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const DrugScreen());
  static Handler editProfileScreenHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          const EditProfileScreen());
}
