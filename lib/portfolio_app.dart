import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/presentation/blocs/theme_bloc/theme_bloc.dart';

import 'presentation/blocs/home_bloc/home_bloc.dart';
import 'presentation/views/home_view.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return AdaptiveTheme(
            light: ThemeState.lightTheme.themeData,
            dark: ThemeState.darkTheme.themeData,
            debugShowFloatingThemeButton: false,
            initial: AdaptiveThemeMode.dark,
            builder: (theme, darkTheme) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'SaifAlmajd Portfolio',
              theme: state.themeData,
              home: BlocProvider<HomeBloc>(
                create: (context) => HomeBloc(),
                child: const HomeView(),
              ),
            ),
          );
        },
      ),
    );
  }
}
