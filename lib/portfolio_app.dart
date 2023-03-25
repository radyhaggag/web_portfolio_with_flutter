import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/theme_manager.dart';
import 'presentation/blocs/home_bloc/home_bloc.dart';
import 'presentation/views/home_view.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.darkTheme(),
      title: 'Rady Haggag',
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(),
        child: const HomeView(),
      ),
    );
  }
}
