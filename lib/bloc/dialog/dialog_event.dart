part of 'dialog_bloc.dart';

@immutable
abstract class DialogEvent {}

class DialogEventShow extends DialogEvent {
  DialogEventShow({
    @required this.title,
    @required this.message,
    this.content,
    this.listButtons,
  });

  final Widget content;
  final List<Widget> listButtons;
  final String message;
  final String title;
}
