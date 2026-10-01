import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const new({super.key});

  final List<TransactionModel> items = const [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: '\$20,129',
      isWithDrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '\$2,000',
      isWithDrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '\$20,129',
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionHistoryItem(transactionModel: e))
          .toList(),
    );
  }
}
