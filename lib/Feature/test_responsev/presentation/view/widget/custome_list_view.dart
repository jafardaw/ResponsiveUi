import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/item_to_list.dart';

class CustomeListView extends StatelessWidget {
  const CustomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 14, // عدد العناصر في القائمة
      itemBuilder: (context, index) {
        return const ItemToList();
      },
    );
  }
}
