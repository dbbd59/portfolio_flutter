import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:baseapp/bloc/auth/login_bloc.dart';
import 'package:baseapp/helpers/injection_container.dart';
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
      if (sl<SharedPreferences>().getString("accessToken") != null) {
        sl<LoginBloc>().add(LoginEventReset());
        yield AuthStateLogged();
      } else {
        yield AuthStateUnLogged();
      }
    }
  }
}
