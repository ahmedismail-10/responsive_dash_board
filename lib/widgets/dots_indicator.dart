import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const new({super.key, required this.currentPageIndex});

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: List.generate(
        3,
        (index) => CustomDotIndicator(
          isActive: index == currentPageIndex,
        ),
      ),
    );
  }
}
