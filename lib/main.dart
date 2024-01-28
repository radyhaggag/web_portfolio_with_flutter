import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/MyBlocObserver.dart';
import 'portfolio_app.dart';

Future<void> main() async {
  Bloc.observer = MyBlocObserver();
  runApp(const PortfolioApp());
}
