import 'dart:async';

import 'package:baseapp/shared/injection_container.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  @override
  AuthState get initialState => AuthInitial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthEventStart) {
      if (getIt<SharedPreferences>().getString("accessToken") != null) {
        yield AuthStateLogged();
      } else {
        yield AuthStateUnLogged();
      }
    }
  }
}
