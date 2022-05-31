import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_playground/themes/themes.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: FormTextField(hintText: 'Search here...'),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: ColorTheme.primaryColor,
          ),
          child: SvgPicture.asset(
            'assets/icons/adjust-horizontal-alt.svg',
          ),
        ),
      ],
    );
  }
}
