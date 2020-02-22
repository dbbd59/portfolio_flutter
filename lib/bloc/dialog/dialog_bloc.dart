import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'dialog_event.dart';
part 'dialog_state.dart';

class DialogBloc extends Bloc<DialogEvent, DialogState> {
  @override
  DialogState get initialState => DialogStateHide();

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
