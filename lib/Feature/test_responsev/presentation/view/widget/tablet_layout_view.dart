import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/custome_list_view.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/layout_builder_list_tablit.dart';

class TabletLayoutView extends StatelessWidget {
  const TabletLayoutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        LayoutBuilderListTablit(),
        CustomeListView()
      ],
    );
  }
}
