import 'package:fluro/fluro.dart';
import 'routes_handlers.dart';
import 'routes_name.dart';

class FluroRouters {
  static final router = FluroRouter();

  static void setupRouter(FluroRouter router) {

    router.define(
      RoutesName.dashBoardScreen,
      handler: RouteHandlers.dashBoardHandler,
    );
    router.define(
      RoutesName.drugScreen,
      handler: RouteHandlers.drugScreenHandler,
    );
    router.define(
      RoutesName.editProfileScreen,
      handler: RouteHandlers.editProfileScreenHandler,
    );

  }
}
