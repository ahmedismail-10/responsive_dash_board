import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsList extends StatefulWidget {
  const new({super.key});

  @override
  State<DrawerItemsList> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index != selectedIndex) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const .only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: (selectedIndex == index),
            ),
          ),
        );
      },
    );
  }
}
