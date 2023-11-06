import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_enums.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import 'vertical_headers.dart';

class VerticalHeadersBuilder extends StatelessWidget {
  const VerticalHeadersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AnimatedCrossFade(
          sizeCurve: Curves.bounceInOut,
          alignment: Alignment.topCenter,
          crossFadeState: _getCrossFadeState(context),
          firstChild: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey.shade200.withOpacity(0.1)),
                  child: const VerticalHeaders()),
            ),
          ),
          secondChild: Container(),
          duration: const Duration(milliseconds: 200),
        );
      },
    );
  }

  CrossFadeState _getCrossFadeState(BuildContext context) {
    final currentHeaderAxis = context.read<HomeBloc>().appBarHeaderAxis;
    return currentHeaderAxis == AppBarHeadersAxis.horizontal
        ? CrossFadeState.showSecond
        : CrossFadeState.showFirst;
  }
}
