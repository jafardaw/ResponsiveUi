import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/desktop_layout.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/mobile_layout_view.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/tablet_layout_view.dart';
import 'package:something/core/adaptiv/adaptiv_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AdaptivLayout(
          mobileLayoutView: (context) => const MobileLayoutView(),
          tabletLayoutView: (context) => const TabletLayoutView(),
          desktopLayout: (context) => const DesktopLayout(),
        ));
  }
}
