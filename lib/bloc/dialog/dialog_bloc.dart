// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'dialog_event.dart';
part 'dialog_state.dart';

@Singleton()
class DialogBloc extends Bloc<DialogEvent, DialogState> {
  DialogBloc() : super(DialogStateHide());

  @override
  Stream<DialogState> mapEventToState(
    DialogEvent event,
  ) async* {
    if (event is DialogEventShow) {
      yield DialogStateShow(
        title: event.title,
        message: event.message,
        content: event.content,
        listButtons: event.listButtons,
      );
    }
  }
}
