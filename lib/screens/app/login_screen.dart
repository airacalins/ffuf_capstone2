import 'package:flutter/material.dart';

import 'package:flutter_playground/screens/screen_widgets.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/utils/strings_constant.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormHeader(
                title: registerAccount,
                description: registerFormInstruction,
              ),
              const SizedBox(height: 20),
              const LoginForm(),
              const SizedBox(height: 40),
              SocialMediaLinks(
                caption1: orContinueWith,
                caption2: newUser,
                linkText: createAccount,
                onNavigate: () => Navigator.of(context).pushNamed(RouteManager.registerScreen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
