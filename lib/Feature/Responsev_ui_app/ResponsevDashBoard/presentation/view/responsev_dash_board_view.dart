import 'package:flutter/material.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/utils/size_config.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/adaptive_layout_widget.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/custom_drawer.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/dashboard_desktop_layout.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/dashboard_mobile_layout.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/dashboard_tablet_layout.dart';

import 'package:something/core/util/size_config.dart';

class DashBoradView extends StatefulWidget {
  const DashBoradView({super.key});

  @override
  State<DashBoradView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoradView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
