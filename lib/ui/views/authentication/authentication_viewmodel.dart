// import 'package:Changali/app/locator.dart';
// import 'package:Changali/app/router.gr.dart';
import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';

class AuthenticationViewModel extends BaseViewModel {
  // final NavigationService _navigationService = locator<NavigationService>();

  String _signInTitle = 'შესვლა';
  String get signInTitle => _signInTitle;

  bool _isLoginPage = true;
  bool get isLoginPage => _isLoginPage;

  void changePage() {
    _isLoginPage = !_isLoginPage;
    notifyListeners();
  }
}
