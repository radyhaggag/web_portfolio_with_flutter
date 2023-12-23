import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_constants.dart';
import 'package:portfolio/presentation/blocs/theme_bloc/theme_bloc.dart';

import 'presentation/blocs/home_bloc/home_bloc.dart';
import 'presentation/views/home_view.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
      ],
      child: AdaptiveTheme(
        light: ThemeState.lightTheme.themeData,
        dark: ThemeState.darkTheme.themeData,
        debugShowFloatingThemeButton: false,
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              themeAnimationCurve: Curves.fastOutSlowIn,
              debugShowCheckedModeBanner: false,
              title: AppConstants.appTitle,
              theme: state.themeData,
              darkTheme: state.themeData,
              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}
