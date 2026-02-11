import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({super.key});

  final List<DrawerItemModel> items = const [
    DrawerItemModel(
      title: 'Dashboard',
      image: AppImages.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: AppImages.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: AppImages.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: AppImages.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: AppImages.imagesMyInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const .only(top: 20),
          child: DrawerItem(drawerItemModel: items[index]),
        );
      },
    );
  }
}
