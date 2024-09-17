import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/card_grid_view.dart';

class GrideViewPageMobile extends StatelessWidget {
  const GrideViewPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 19.0,
        mainAxisSpacing: 19.0,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return const CardGridView();
      },
    );
  }
}
