import 'package:flutter/material.dart';

import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
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
              RegisterForm(),
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
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Register Account',
          style: textTheme.headline2,
        ),
        Text(
          'Fill your details or continue\nwith social media',
          style: textTheme.bodyText1,
        ),
      ],
    );
  }

  Column socialMediaLinks(BuildContext context, TextTheme textTheme) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '- Or Continue with -',
          style: textTheme.bodyText1,
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
              'Already Have an Account? ',
              style: textTheme.bodyText1,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(RouteManager.loginScreen),
              child: Text(
                'Log In',
                style: textTheme.bodyText1!.merge(
                  const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1A1D1E),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
