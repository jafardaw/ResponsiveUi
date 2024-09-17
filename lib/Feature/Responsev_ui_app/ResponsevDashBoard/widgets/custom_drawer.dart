import 'package:flutter/material.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/models/drawer_item_model.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/models/user_info_model.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/utils/app_images.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/active_and_inactive_item.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/drawer_items_list_view.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', image: Assets.imagesSettings),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
