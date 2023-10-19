part of 'theme_bloc.dart';

@immutable
class ThemeState {
  final ThemeData themeData;

  const ThemeState(this.themeData);

  static ThemeState get darkTheme =>
      ThemeState(ThemeData.dark(useMaterial3: true).copyWith(
          colorScheme: const ColorScheme.dark(),
          appBarTheme: AppBarTheme(color: AppColors.secondaryColor)));

  static ThemeState get lightTheme =>
      ThemeState(ThemeData.light(useMaterial3: true).copyWith(
          colorScheme: const ColorScheme.light(),
          appBarTheme: AppBarTheme(color: AppColors.white)));
}
