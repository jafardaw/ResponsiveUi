import 'package:flutter/material.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/all_expensess_header.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/all_expensess_items_list_view.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/custom_background_container.dart';


class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
