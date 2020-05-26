// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:baseapp/core/services/api_service.dart';
import 'package:baseapp/model/chuck_norris_fact.dart';

// 🌎 Project imports:

part 'chucknorris_event.dart';
part 'chucknorris_state.dart';

@Injectable()
class ChucknorrisBloc extends Bloc<ChucknorrisEvent, ChucknorrisState> {
  ChucknorrisBloc(this._apiService);

  ApiService _apiService;

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
            await _apiService.fetchChuckNorrisFact();
        yield ChucknorrisStateLoaded(chuckNorrisFact: chuckNorrisFact);
      } catch (_) {
        yield ChucknorrisStateError();
      }
    }
  }
}
