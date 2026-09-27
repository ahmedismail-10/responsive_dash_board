import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: .start,
      spacing: 20,
      children: [
        Text(
          'My Cards',
          style: AppStyles.styleSemiBold20,
        ),
        MyCardsPageView(),
        DotsIndicator(),
      ],
    );
  }
}
