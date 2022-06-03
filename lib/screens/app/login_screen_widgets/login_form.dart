import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/utils/strings_constant.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserProvider>(context);
    final textTheme = Theme.of(context).textTheme;

    final _form = GlobalKey<FormState>();

    User _user = User(
      id: 0,
      firstName: '',
      lastName: '',
      username: '',
      imageUrl: '',
      email: '',
      password: '',
    );

    void _onLogin() {
      final isValid = _form.currentState!.validate();
      if (!isValid) {
        return;
      }
      _form.currentState?.save();
      userData.loginUser(_user.email, _user.password);
      Navigator.of(context).pushNamed(RouteManager.homeScreen);
    }

    void _onEmailSaved(value) {
      _user = User(
        id: _user.id,
        firstName: _user.firstName,
        lastName: _user.lastName,
        username: _user.email,
        imageUrl: _user.imageUrl,
        email: value,
        password: _user.password,
      );
    }

    void _onPasswordSaved(value) {
      _user = User(
        id: _user.id,
        firstName: _user.firstName,
        lastName: _user.lastName,
        username: _user.email,
        imageUrl: _user.imageUrl,
        email: _user.email,
        password: value,
      );
    }

    String? _emailValidator(String value) {
      if (value.isEmpty) {
        return emailShouldNotEmptyValidation;
      }
      if (!value.toString().contains('@')) {
        return validEmailAddressValidation;
      }
      return null;
    }

    String? _passwordValidator(value) {
      if (value.isEmpty) {
        return passwordShouldNotEmptyValidation;
      }
      return null;
    }

    return Form(
      key: _form,
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
            onFieldSubmitted: _onLogin,
            onSaved: (value) => _onEmailSaved(value),
            validator: (value) => _emailValidator(value),
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
            obscureText: true,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: _onLogin,
            onSaved: (value) => _onPasswordSaved(value),
            validator: (value) => _passwordValidator(value),
          ),
          Text(
            forgetPassword,
            style: textTheme.caption!.merge(const TextStyle(fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _onLogin,
              child: const Text(login),
            ),
          ),
        ],
      ),
    );
  }
}
