import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/user.dart';
import 'package:flutter_playground/providers/user_provider.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/utils/strings_constant.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserProvider>(context);
    final form = GlobalKey<FormState>();

    User user = User(
      id: 0,
      firstName: '',
      lastName: '',
      username: '',
      imageUrl: '',
      email: '',
      password: '',
    );

    void _onRegister() {
      final isValid = form.currentState!.validate();
      if (!isValid) {
        return;
      }
      form.currentState!.save();
      userData.registerUser(user);
      Navigator.of(context).pushNamed(RouteManager.loginScreen);
    }

    void _onEmailSaved(value) {
      user = User(
        id: user.id,
        firstName: user.firstName,
        lastName: user.lastName,
        username: user.email,
        imageUrl: user.imageUrl,
        email: value,
        password: user.password,
      );
    }

    void _onUsernameSaved(value) {
      user = User(
        id: user.id,
        firstName: user.firstName,
        lastName: user.lastName,
        username: value,
        imageUrl: user.imageUrl,
        email: user.email,
        password: user.password,
      );
    }

    void _onPasswordSaved(value) {
      user = User(
        id: user.id,
        firstName: user.firstName,
        lastName: user.lastName,
        username: user.username,
        imageUrl: user.imageUrl,
        email: user.email,
        password: value,
      );
    }

    String? _onEmailValidation(value) {
      if (value.isEmpty) {
        return emailShouldNotEmptyValidation;
      }
      if (!value.toString().contains('a')) {
        return validEmailAddressValidation;
      }
      return null;
    }

    String? _onUsernameValidation(value) {
      if (value.isEmpty) {
        return usernameShouldNotEmptyValidation;
      }
      return null;
    }

    String? _onPasswordValidation(value) {
      if (value.isEmpty) {
        return passwordShouldNotEmptyValidation;
      }
      if (value.length < 8) {
        return passwordCharacterLengthValidation;
      }
      return null;
    }

    return Form(
      key: form,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FormTextField(
            hintText: email,
            prefixIcon: Container(
              width: 15,
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SvgPicture.asset(emailIconPath),
            ),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: _onRegister,
            onSaved: (value) => _onEmailSaved(value),
            validator: (value) => _onEmailValidation(value),
          ),
          FormTextField(
            hintText: username,
            prefixIcon: const Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: _onRegister,
            onSaved: (value) => _onUsernameSaved(value),
            validator: (value) => _onUsernameValidation(value),
          ),
          FormTextField(
            hintText: password,
            prefixIcon: Container(
              width: 15,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SvgPicture.asset(lockIconPath),
            ),
            suffixIcon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.grey,
            ),
            textInputAction: TextInputAction.done,
            obscureText: true,
            onFieldSubmitted: _onRegister,
            onSaved: (value) => _onPasswordSaved(value),
            validator: (value) => _onPasswordValidation(value),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _onRegister,
              child: const Text(signUp),
            ),
          ),
        ],
      ),
    );
  }
}
