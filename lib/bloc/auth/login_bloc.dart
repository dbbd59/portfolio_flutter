import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:baseapp/bloc/auth/auth_bloc.dart';
import 'package:baseapp/helpers/injection_container.dart';
import 'package:baseapp/repositories/auth/auth_repository.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginEventLogin) {
      yield LoginStateLoading();
      await sl<AuthRepository>().auth();
      sl<AuthBloc>().add(AuthEventStart());
    }

    if (event is LoginEventReset) {
      yield LoginInitial();
    }

    if (event is LoginEventLogOut) {
      yield LoginInitial();
      await sl<AuthRepository>().logout();
      sl<AuthBloc>().add(AuthEventStart());
    }
  }
}
