import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';

class IncomeChart extends StatefulWidget {
  const new({super.key, required this.items});

  final List<IncomeDetailsModel> items;

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, pieTouchResponse) {
          setState(() {
            touchedIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,

      sections: widget.items
          .asMap()
          .entries
          .map(
            (e) => PieChartSectionData(
              color: e.value.color,
              value: e.value.value,
              showTitle: false,
              radius: touchedIndex == e.key ? 25 : 20,
            ),
          )
          .toList(),
    );
  }
}
