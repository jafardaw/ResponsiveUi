import 'package:flutter/material.dart';

class AdaptivLayout extends StatelessWidget {
  const AdaptivLayout({
    super.key,
    required this.mobileLayoutView,
    required this.tabletLayoutView,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayoutView, tabletLayoutView, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return mobileLayoutView(context);
        } else if (constrains.maxWidth < 900) {
          return tabletLayoutView(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
