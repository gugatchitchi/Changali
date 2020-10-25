import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
// Important. Import the locator.config.dart file
import 'locator.config.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() => $initGetIt(locator);
