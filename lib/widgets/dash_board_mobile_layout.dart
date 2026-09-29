import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transaction_history_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: .symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            AllExpenses(),
            SizedBox(height: 24),
            QuickInvoice(),
            SizedBox(height: 24),
            MyCardsAndTransactionHistorySection(),
            SizedBox(height: 24),
            IncomeSection(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
