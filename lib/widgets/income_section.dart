import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details_list_view.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const new({super.key});

  final List<IncomeDetailsModel> items = const [
    IncomeDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: 40.0,
    ),
    IncomeDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: 25.0,
    ),
    IncomeDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: 20.0,
    ),
    IncomeDetailsModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: 15.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackgoundContainer(
      child: Column(
        spacing: 16,
        children: [
          const IncomeSectionHeader(),
          Row(
            children: [
              Expanded(
                child: IncomeChart(
                  items: items,
                ),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetailsListView(items: items),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
