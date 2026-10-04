import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const new({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        if (width < SizeConfig.mobileWidth) {
          return mobileLayout(context);
        } else if (width < SizeConfig.tabletWidth) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
