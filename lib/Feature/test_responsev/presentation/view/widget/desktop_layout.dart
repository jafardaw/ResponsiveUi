import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/custom_desktop_widget.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/custom_drower.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/tablet_layout_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomeDrower()),
        SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: TabletLayoutView(),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: CustomDesktopWidget(),
        )),
      ],
    );
  }
}
