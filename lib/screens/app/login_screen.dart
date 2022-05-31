import 'package:flutter/material.dart';

import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text(''), automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(context),
              const SizedBox(
                height: 20,
              ),
              LoginForm(),
              const SizedBox(
                height: 40,
              ),
              socialMediaLinks(context, textTheme)
            ],
          ),
        ),
      ),
    );
  }

  Column header(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back!',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          'Fill your details or continue\nwith social media',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Column socialMediaLinks(BuildContext context, TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '- Or Continue with -',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: 20,
        ),
        SocialMediaLoginLoginGroup(),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'New User? ',
              style: textTheme.bodyText1,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(RouteManager.registerScreen),
              child: Text(
                'Create Account',
                style: textTheme.bodyText1!.merge(
                  const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1A1D1E),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
