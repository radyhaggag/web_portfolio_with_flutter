import 'package:flutter/material.dart';
import '../widgets/body/home_body.dart';
import '../widgets/app_bar/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }
}
