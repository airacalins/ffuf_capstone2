// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class FormTextField extends StatelessWidget {
  final String hintText;
  final Function onFieldSubmitted;
  final Function onSaved;
  final Function validator;
  final String? labelText;
  final String? errorMessage;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const FormTextField({
    Key? key,
    required this.hintText,
    required this.onFieldSubmitted,
    required this.onSaved,
    required this.validator,
    this.labelText,
    this.errorMessage,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          errorText: errorMessage,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(15.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          labelStyle: const TextStyle(color: ColorTheme.textColor),
          hintStyle: const TextStyle(color: ColorTheme.textColor),
        ),
        onFieldSubmitted: (value) => onFieldSubmitted(),
        onSaved: (value) => onSaved(value),
        validator: (value) => validator(value),
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        enableSuggestions: false,
        autocorrect: false,
        focusNode: focusNode,
      ),
    );
  }
}
