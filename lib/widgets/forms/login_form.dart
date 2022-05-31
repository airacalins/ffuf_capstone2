// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FormTextField(
          hintText: 'Email',
          prefixIcon: Container(
            width: 15,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SvgPicture.asset(
              'assets/icons/email.svg',
            ),
          ),
        ),
        FormTextField(
          hintText: 'Password',
          prefixIcon: Container(
            width: 15,
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SvgPicture.asset(
              'assets/icons/lock.svg',
            ),
          ),
          suffixIcon: const Icon(
            Icons.remove_red_eye_outlined,
            color: Colors.grey,
          ),
        ),
        Text(
          'Forget Password?',
          style: textTheme.caption!.merge(
            const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed(RouteManager.appScreen),
            child: const Text('LOG IN'),
          ),
        ),
      ],
    );
  }
}
