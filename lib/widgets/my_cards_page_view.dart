import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const new({super.key, required this.onPageChanged});

  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      onPageChanged: onPageChanged,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const MyCard();
      },
    );
  }
}
