import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const new({super.key, required this.incomeDetailsModel});

  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.circle, size: 12, color: incomeDetailsModel.color),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        '${incomeDetailsModel.value.toInt()}%',
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
