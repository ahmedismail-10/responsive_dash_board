import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgoundContainer(
      child: Column(
        crossAxisAlignment: .start,
        spacing: 24,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            color: Color(0xffF1F1F1),
          ),
          TitleTextField(
            title: 'Customer name',
            hintText: 'Type customer name',
          ),
        ],
      ),
    );
  }
}
