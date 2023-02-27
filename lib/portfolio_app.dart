import 'package:flutter/material.dart';
import 'package:portfolio/config/theme_manager.dart';

import 'presentation/views/home_view.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: CustomTheme.darkTheme(),
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
