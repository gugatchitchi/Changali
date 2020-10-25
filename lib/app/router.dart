// NOTE: after all the routes are created run
// "flutter pub run build_runner build" in terminal

import 'package:auto_route/auto_route_annotations.dart';
import 'package:Changali/ui/views/startup/startup_view.dart';
import 'package:Changali/ui/views/home/home_view.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: StartupView, initial: true, name: 'startupViewRoute'),
  MaterialRoute(page: HomeView, initial: false, name: 'homeViewRoute'),
])
class $Router {}
