import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const new({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
  });

  final String text;
  final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: .circular(12),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const .all(20),
        child: Text(
          text,
          style: AppStyles.styleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
