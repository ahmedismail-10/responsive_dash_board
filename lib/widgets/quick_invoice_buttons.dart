import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 24,
      children: [
        Expanded(
          child: CustomButton(
            text: 'Add more details',
            backgroundColor: Colors.transparent,
            textColor: Color(0xff4EB7F2),
          ),
        ),
        Expanded(child: CustomButton(text: 'Send Money')),
      ],
    );
  }
}
