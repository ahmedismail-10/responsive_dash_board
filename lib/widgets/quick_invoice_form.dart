import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 24,
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type item name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
