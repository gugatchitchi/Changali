import 'package:Changali/ui/helpers/box_decorations.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  // Validates the field
  final validator;
  // placeholder which transforms into a title
  final String placeholder;
  // fills input with initial value
  final String initialValue;
  // obscures text if password
  final bool isPassword;
  // What Keyboard to use
  final TextInputType keyboard;

  const CustomTextFormField({
    Key key,
    @required this.validator,
    @required this.placeholder,
    this.initialValue,
    this.isPassword = false,
    this.keyboard = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // Container needs vertical padding, so error message
          // appers over white background
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: TextFormField(
            validator: validator,
            keyboardType: keyboard,
            initialValue: initialValue,
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: placeholder,
            ),
          ),
          decoration: inputBoxDecoration,
        ),
      ],
    );
  }
}
