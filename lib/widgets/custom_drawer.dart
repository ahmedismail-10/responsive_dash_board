import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: AppImages.imagesAvatar3,
            userName: 'Lekan Okeowo',
            userEmail: 'demo@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView(),
          Expanded(child: SizedBox()),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              title: 'Settings',
              image: AppImages.imagesSettings,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              title: 'Logout account',
              image: AppImages.imagesLogout,
            ),
          ),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
