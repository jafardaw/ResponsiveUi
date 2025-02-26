import 'package:flutter/material.dart';

import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/all_expensess.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
