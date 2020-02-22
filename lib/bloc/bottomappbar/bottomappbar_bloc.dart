import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:baseapp/models/enums/navigation_page_enum.dart';

part 'bottomappbar_event.dart';
part 'bottomappbar_state.dart';

class BottomAppBarBloc extends Bloc<BottomAppBarEvent, BottomAppBarState> {
  @override
  BottomAppBarState get initialState => BottomAppBarState(
        pageSelected: NavigationPageEnum.WELCOME,
      );

  @override
  Stream<BottomAppBarState> mapEventToState(
    BottomAppBarEvent event,
  ) async* {
    if (event is BottomAppBarEventPageChanged) {
      yield BottomAppBarState(
        pageSelected: event.selectedPage,
      );
    }
  }
}
