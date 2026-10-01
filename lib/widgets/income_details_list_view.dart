import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/widgets/income_details_item.dart';

class IncomeDetailsListView extends StatelessWidget {
  const new({super.key, required this.items});

  final List<IncomeDetailsModel> items;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => IncomeDetailsItem(incomeDetailsModel: e))
          .toList(),
    );
  }
}
