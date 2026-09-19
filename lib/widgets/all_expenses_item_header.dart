import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const new({
    super.key,
    required this.image,
    this.isSelected = false,
  });

  final String image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: isSelected ? Colors.white10 : Colors.white,
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              isSelected ? Colors.white : const Color(0xff4EB7F2),
              .srcIn,
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: isSelected ? Colors.white : const Color(0xff064061),
          size: 18,
        ),
      ],
    );
  }
}
