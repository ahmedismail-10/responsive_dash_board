import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_buttons.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgoundContainer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 24,
          children: [
            QuickInvoiceHeader(),
            LatestTransaction(),
            Divider(
              color: Color(0xffF1F1F1),
            ),
            QuickInvoiceForm(),
            QuickInvoiceButtons(),
          ],
        ),
      ),
    );
  }
}
