import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';

class IncomeChart extends StatelessWidget {
  const new({super.key, required this.items});

  final List<IncomeDetailsModel> items;
  @override
  Widget build(BuildContext context) {
    return PieChart(getPieChartData());
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: items
          .map(
            (e) => PieChartSectionData(
              color: e.color,
              value: e.value,
              showTitle: false,
              radius: 21,
            ),
          )
          .toList(),
    );
  }
}
