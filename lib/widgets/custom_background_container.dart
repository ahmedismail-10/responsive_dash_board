import 'package:flutter/material.dart';

class CustomBackgoundContainer extends StatelessWidget {
  const new({super.key, required this.child, this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(padding ?? 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(12),
      ),
      child: child,
    );
  }
}
