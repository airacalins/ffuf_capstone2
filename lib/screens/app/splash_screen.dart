import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/utils/strings_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Image(image: AssetImage('assets/images/app/logo.png')),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 2,
              child: Image(
                image: AssetImage('assets/images/app/splash-screen-pic.png'),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 60),
            Expanded(
              child: Column(
                children: [
                  Text(
                    findAPerfectJobMatch,
                    textAlign: TextAlign.center,
                    style: textTheme.headline1,
                  ),
                  Text(
                    splashScreenDescription,
                    style: textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed(RouteManager.loginScreen),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(letsGetStarted),
                    const SizedBox(width: 10),
                    SvgPicture.asset('assets/icons/arrow-right.svg'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
