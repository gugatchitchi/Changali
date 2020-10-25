import 'package:flutter/material.dart' hide Router;
import 'package:Changali/app/locator.dart';
import 'package:Changali/ui/views/stream_example/stream_example_view.dart';
// import 'package:stack_architecture/ui/views/future_example/future_example_view.dart';
// import 'package:stack_architecture/ui/views/partial_builds/partial_builds_view.dart';
// import 'package:stack_architecture/ui/views/reactive_example/reactive_example_view.dart';
// import 'package:stack_architecture/ui/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: StreamExampleView(),
      // home: FutureExampleView(),
      // home: ReactiveExampleView(),
      // home: PartialBuildsView(),
      // initialRoute: Routes.startupViewRoute,
      onGenerateRoute: Router(),
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
