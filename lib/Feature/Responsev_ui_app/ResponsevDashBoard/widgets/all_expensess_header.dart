import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/utils/app_styles.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const RangeOptions(),
      ],
    );
  }
}
