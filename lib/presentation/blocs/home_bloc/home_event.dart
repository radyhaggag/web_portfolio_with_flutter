part of 'home_bloc.dart';

abstract class HomeEvent {}

class ChangeAppBarHeadersIndex extends HomeEvent {
  final int index;

  ChangeAppBarHeadersIndex(this.index);
}

class ChangeAppBarHeadersAxis extends HomeEvent {
  final AppBarHeadersAxis headersAxis;

  ChangeAppBarHeadersAxis(this.headersAxis);
}
