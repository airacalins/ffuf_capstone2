import 'package:flutter/material.dart';

import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class LoginSocialMediaLinks extends StatelessWidget {
  const LoginSocialMediaLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '- Or Continue with -',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 20),
        SocialMediaLoginLoginGroup(),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'New User? ',
              style: textTheme.bodyText1,
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(RouteManager.registerScreen),
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
