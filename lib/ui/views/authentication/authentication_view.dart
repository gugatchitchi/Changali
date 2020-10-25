import 'package:Changali/ui/widgets/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:email_validator/email_validator.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import 'authentication_viewmodel.dart';

class AuthenticationView extends StatelessWidget {
  // final emailInputController = TextEditingController();
  final _loginFormKey = GlobalKey<FormState>();
  final _signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.yellow,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
          child: model.isLoginPage
              ? _LoginForm(
                  formKey: _loginFormKey,
                  formTitle: 'შესვლა',
                )
              : _LoginForm(
                  formKey: _loginFormKey,
                  formTitle: 'რეგისტრაცია',
                ),
        ),
      ),
      viewModelBuilder: () => AuthenticationViewModel(),
    );
  }
}

class _LoginForm extends HookViewModelWidget<AuthenticationViewModel> {
  final GlobalKey<FormState> formKey;
  final String formTitle;
  const _LoginForm({
    Key key,
    @required this.formKey,
    @required this.formTitle,
  }) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
      BuildContext context, AuthenticationViewModel model) {
    const Widget _verticalSpacer = SizedBox(height: 20.0);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            formTitle,
            style: TextStyle(
              fontSize: 36.0,
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Name
                CustomTextFormField(
                  placeholder: 'სახელი',
                  validator: (value) {
                    if (value.length == 0) {
                      return 'გთხოვთ შეიყვანოთ თქვენი სახელი';
                    }
                    return null;
                  },
                ),
                _verticalSpacer,
                // telephone
                CustomTextFormField(
                  placeholder: 'ტელეფონი',
                  keyboard: TextInputType.phone,
                  validator: (value) {
                    if (value.length < 6) {
                      return 'გთხოვთ შეიყვანოთ 6+ ნიშნიანი პაროლი';
                    }
                    return null;
                  },
                ),
                _verticalSpacer,
                // Passowr Text Input
                CustomTextFormField(
                  placeholder: 'პაროლი',
                  isPassword: true,
                  validator: (value) {
                    if (value.length < 6) {
                      return 'გთხოვთ შეიყვანოთ 6+ ნიშნიანი პაროლი';
                    }
                    return null;
                  },
                ),
                _verticalSpacer,
                // Passowr Text Input
                CustomTextFormField(
                  placeholder: 'პაროლი',
                  isPassword: true,
                  validator: (value) {
                    if (value.length < 6) {
                      return 'გთხოვთ შეიყვანოთ 6+ ნიშნიანი პაროლი';
                    }
                    return null;
                  },
                ),
                _verticalSpacer,
                // Button
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState.validate()) {
                      print('login');
                    }
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text('შესვლა'),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(20.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 3.0),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              model.changePage();
            },
            child: Container(
              width: 200,
              height: 50,
              alignment: Alignment.center,
              child: Text('რეგისტრაცია'),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(20.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 3.0),
                    blurRadius: 3.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
