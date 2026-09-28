import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20),
        RangeOptions(),
      ],
    );
  }
}
