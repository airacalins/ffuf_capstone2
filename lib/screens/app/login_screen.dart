import 'package:flutter/material.dart';

import 'package:flutter_playground/screens/screen_widgets.dart';
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
            children: const [
              LoginHeader(),
              SizedBox(height: 20),
              LoginForm(),
              SizedBox(height: 40),
              LoginSocialMediaLinks()
            ],
          ),
        ),
      ),
    );
  }
}
