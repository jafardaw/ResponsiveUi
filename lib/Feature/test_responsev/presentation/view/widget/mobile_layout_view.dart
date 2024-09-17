import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/custome_list_view.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/gride_view_page.dart';

class MobileLayoutView extends StatelessWidget {
  const MobileLayoutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        GrideViewPageMobile(),
        CustomeListView()
      ],
    );
  }
}
