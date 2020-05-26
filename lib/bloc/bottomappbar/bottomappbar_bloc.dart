// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

// 🌎 Project imports:
import 'package:baseapp/model/enums/navigation_page_enum.dart';

part 'bottomappbar_event.dart';
part 'bottomappbar_state.dart';

@Singleton()
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
