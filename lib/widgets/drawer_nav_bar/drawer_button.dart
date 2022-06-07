import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_playground/themes/themes.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ColorTheme.primaryColor,
      ),
      margin: const EdgeInsets.only(
        left: 15.0,
        top: 7.5,
        bottom: 7.5,
      ),
      padding: const EdgeInsets.all(12.0),
      child: SvgPicture.asset('assets/icons/menu.svg'),
    );
  }
}
