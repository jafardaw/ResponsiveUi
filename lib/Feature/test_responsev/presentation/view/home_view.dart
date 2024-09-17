import 'package:flutter/material.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/custom_drower.dart';
import 'package:something/Feature/test_responsev/presentation/view/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scafState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafState,
      backgroundColor: const Color(0xffDBDBDB),
      drawer: const CustomeDrower(),
      appBar: MediaQuery.sizeOf(context).width - 32 < 900
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scafState.currentState!.openEndDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              backgroundColor: Colors.green,
            )
          : null,
      body: const HomeViewBody(),
    );
  }
}
