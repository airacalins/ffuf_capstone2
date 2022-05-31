import 'package:flutter/material.dart';

class BottomSheetTopHorizontalController extends StatelessWidget {
  const BottomSheetTopHorizontalController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.shade300,
      ),
    );
  }
}
