import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transaction_history_section.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgoundContainer(
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            MyCardsSection(),
            Divider(
              color: Color(0xffF1F1F1),
            ),
            TransactionHistorySection(),
          ],
        ),
      ),
    );
  }
}
