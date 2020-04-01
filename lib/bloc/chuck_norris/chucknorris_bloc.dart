import 'dart:async';
import 'package:baseapp/models/chuck_norris_fact.dart';
import 'package:baseapp/services/api_service.dart';
import 'package:baseapp/shared/injection_container.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'chucknorris_event.dart';
part 'chucknorris_state.dart';

class ChucknorrisBloc extends Bloc<ChucknorrisEvent, ChucknorrisState> {
  @override
  ChucknorrisState get initialState => InitialChucknorrisState();

  @override
  Stream<ChucknorrisState> mapEventToState(
    ChucknorrisEvent event,
  ) async* {
    if (event is FetchChuckNorrisFact) {
      yield ChucknorrisStateLoading();
      try {
        final ChuckNorrisFact chuckNorrisFact =
            await getIt<ApiService>().fetchChuckNorrisFact();
        yield ChucknorrisStateLoaded(chuckNorrisFact: chuckNorrisFact);
      } catch (_) {
        yield ChucknorrisStateError();
      }
    }
  }
}
