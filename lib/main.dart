// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:Changali/app/locator.dart';
// import 'package:Changali/ui/views/stream_example/stream_example_view.dart';
// import 'package:Changali/ui/views/future_example/future_example_view.dart';
// import 'package:Changali/ui/views/partial_builds/partial_builds_view.dart';
// import 'package:Changali/ui/views/reactive_example/reactive_example_view.dart';
// import 'package:Changali/ui/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: HomeView(),
      // home: StreamExampleView(),
      // home: FutureExampleView(),
      // home: ReactiveExampleView(),
      // home: PartialBuildsView(),
      initialRoute: Routes.authenticationViewRoute,
      onGenerateRoute: Router(),
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
