import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const new({super.key, required this.hintText});

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0xffAAAAAA),
        ),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: .circular(12),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}
