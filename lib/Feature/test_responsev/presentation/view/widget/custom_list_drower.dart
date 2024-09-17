import 'package:flutter/material.dart';
import 'package:something/constant.dart';

class CustomListDrawer extends StatelessWidget {
  const CustomListDrawer({
    super.key,
    required this.drowerModel,
  });

  final List<DrawerModel> drowerModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: drowerModel.length,
        itemBuilder: (context, index) {
          var drowerModelIndex = drowerModel[index];
          return FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Icon(drowerModelIndex.icon),
              ),
              title: Text(drowerModelIndex.title),
            ),
          );
        });
  }
}
