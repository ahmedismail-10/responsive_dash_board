import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const new({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xffFAFAFA),
          child: SvgPicture.asset(image),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(0xff064061),
          size: 18,
        ),
      ],
    );
  }
}
