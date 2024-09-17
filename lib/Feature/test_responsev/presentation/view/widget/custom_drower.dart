import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/custom_list_drower.dart';
import 'package:something/constant.dart';

class CustomeDrower extends StatefulWidget {
  const CustomeDrower({
    super.key,
  });

  @override
  State<CustomeDrower> createState() => _CustomeDrowerState();
}

class _CustomeDrowerState extends State<CustomeDrower> {
  //or static const
  final List<DrawerModel> drowerModel = const [
    DrawerModel(title: 'D A S H B O R D', icon: Icons.dashboard),
    DrawerModel(title: 'S E T T I N G', icon: Icons.settings),
    DrawerModel(title: 'A B O U T ', icon: Icons.details_outlined),
    DrawerModel(title: 'L O G O U T', icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            Icons.favorite,
            color: Colors.black,
            size: 70,
          )),
          const SizedBox(height: 16),
          CustomListDrawer(drowerModel: drowerModel)
        ],
      ),
    );
  }
}
