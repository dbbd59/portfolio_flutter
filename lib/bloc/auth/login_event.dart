part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginEventLogin extends LoginEvent {
  LoginEventLogin({
    @required this.username,
    @required this.password,
  });

  final String password;
  final String username;
}

class LoginEventReset extends LoginEvent {}

class LoginEventLogOut extends LoginEvent {}
