import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const new({super.key, required this.title, required this.hintText});

  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 12,
      children: [
        Text(title, style: AppStyles.styleMedium16),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}
