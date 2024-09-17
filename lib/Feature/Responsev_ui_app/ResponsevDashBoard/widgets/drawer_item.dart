import 'package:flutter/material.dart';

import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/models/drawer_item_model.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
