import 'package:flutter/material.dart';

@immutable
abstract class ThemeEvent {}

class ThemeEventChange extends ThemeEvent {
  final ThemeEventType currentTheme;
  ThemeEventChange(this.currentTheme);
}

enum ThemeEventType {
  toggleDark, // Event for toggling to dark theme
  toggleLight, // Event for toggling to light theme
}
