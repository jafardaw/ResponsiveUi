import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/card_grid_view.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/item_to_list.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: CardGridView(),
        ),
        // SizedBox(height: 16),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: ItemToList(),
        )),
      ],
    );
  }
}
