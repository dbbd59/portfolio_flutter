import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:portfolio/models/chuck_norris_fact.dart';
import '../server.dart';
import './bloc.dart';

class ChucknorrisBloc extends Bloc<ChucknorrisEvent, ChucknorrisState> {
  ChucknorrisBloc({Api api}) : _api = api;

  final Api _api;
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
            await _api.fetchChuckNorrisFact();
        yield ChucknorrisStateLoaded(chuckNorrisFact: chuckNorrisFact);
      } catch (_) {
        yield ChucknorrisStateError();
      }
    }
  }
}
