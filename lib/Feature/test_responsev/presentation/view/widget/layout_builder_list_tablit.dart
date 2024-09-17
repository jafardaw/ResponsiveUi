import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/card_grid_view.dart';

class LayoutBuilderListTablit extends StatelessWidget {
  const LayoutBuilderListTablit({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) {
              return const AspectRatio(
                  aspectRatio: 1,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: CardGridView(),
                  ));
            }),
      ),
    );
  }
}
