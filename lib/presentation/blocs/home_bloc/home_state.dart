part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class AppBarHeadersIndexChanged extends HomeState {
  final int index;

  AppBarHeadersIndexChanged(this.index);

  @override
  List<Object?> get props => [index];
}

class AppBarHeadersAxisChanged extends HomeState {
  final AppBarHeadersAxis headersAxis;

  AppBarHeadersAxisChanged(this.headersAxis);

  @override
  List<Object?> get props => [headersAxis];
}

class AppBarHeadersColorChangedByIndex extends HomeState {
  final int index;

  AppBarHeadersColorChangedByIndex(this.index);

  @override
  List<Object?> get props => [index];
}
