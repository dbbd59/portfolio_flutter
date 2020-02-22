part of 'bottomappbar_bloc.dart';

@immutable
abstract class BottomAppBarEvent {}

class BottomAppBarEventPageChanged extends BottomAppBarEvent {
  BottomAppBarEventPageChanged({@required this.selectedPage});

  final NavigationPageEnum selectedPage;
}
