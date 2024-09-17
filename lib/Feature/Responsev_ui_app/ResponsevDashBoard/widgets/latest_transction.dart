import 'package:flutter/material.dart';

import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/utils/app_styles.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/latest_transction_list_view.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransctionListView()
      ],
    );
  }
}
