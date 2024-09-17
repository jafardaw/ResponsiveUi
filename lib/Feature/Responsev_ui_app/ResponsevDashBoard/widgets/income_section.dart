import 'package:flutter/material.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/custom_background_container.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/income_section_body.dart';
import 'package:something/Feature/Responsev_ui_app/ResponsevDashBoard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [IncomeSectionHeader(), IncomSectionBody()],
    ));
  }
}
