import 'package:flutter/material.dart';

import 'package:flutter_playground/screens/screen_widgets.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              RegisterHeader(),
              SizedBox(height: 20),
              RegisterForm(),
              SizedBox(height: 40),
              RegisterSocialMediaLinks(),
            ],
          ),
        ),
      ),
    );
  }
}
