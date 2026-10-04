import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const new({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: .circular(12),
      ),
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithDrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
