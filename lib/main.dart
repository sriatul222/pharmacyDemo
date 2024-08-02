import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/firebaseOption/firebase_options.dart';
import 'package:pharmaconnect/noNetwork/cubit/network_bloc.dart';
import 'package:pharmaconnect/noNetwork/cubit/network_event.dart';
import 'package:pharmaconnect/routes/router.dart';
import 'package:pharmaconnect/routes/routes_name.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FluroRouters.setupRouter(FluroRouters.router);
  runApp(
    BlocProvider<NetworkBloc>(
      create: (_) => NetworkBloc()..add(ListenConnection()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false
        ),
        color: Colors.white,
        title: 'Pharma Connect',
        onGenerateRoute: FluroRouters.router.generator,
        initialRoute: RoutesName.dashBoardScreen,
      ),
    );
  }
}

