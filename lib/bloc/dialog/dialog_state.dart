part of 'dialog_bloc.dart';

@immutable
abstract class DialogState {}

class DialogStateHide extends DialogState {}

class DialogStateShow extends DialogState {
  DialogStateShow({
    required this.title,
    required this.message,
    this.content,
    this.listButtons,
  });

  final Widget? content;
  final List<Widget>? listButtons;
  final String message;
  final String title;
}
